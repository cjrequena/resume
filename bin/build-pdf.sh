#!/usr/bin/env bash
#
# Render the Jekyll site to a print-ready PDF.
#
# The site is the single source of the resume's content and styling: this only
# builds it, serves the build over HTTP (so the Google Fonts and stylesheet load
# the same way a browser would), and prints it with headless Chrome. Page size
# and margins come from the `@page` rule in _sass/_print.scss, not from here.
#
# The build goes to a private temp directory rather than _site, so a
# `jekyll serve --watch` left running in another terminal cannot regenerate
# _site underneath us halfway through and get printed instead.
#
# Usage: bin/build-pdf.sh [output.pdf]

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
OUT="${1:-$ROOT/Carlos-Requena-Solutions-Architect.pdf}"
PORT="${PORT:-4321}"

CHROME="${CHROME:-/Applications/Google Chrome.app/Contents/MacOS/Google Chrome}"
if [[ ! -x "$CHROME" ]]; then
  for candidate in \
    "/Applications/Chromium.app/Contents/MacOS/Chromium" \
    "/Applications/Microsoft Edge.app/Contents/MacOS/Microsoft Edge" \
    "$(command -v google-chrome || true)" \
    "$(command -v chromium || true)"; do
    if [[ -n "$candidate" && -x "$candidate" ]]; then CHROME="$candidate"; break; fi
  done
fi
if [[ ! -x "$CHROME" ]]; then
  echo "error: no Chrome/Chromium found. Set CHROME=/path/to/chrome" >&2
  exit 1
fi

BUILD="$(mktemp -d)"
trap 'rm -rf "$BUILD"' EXIT

echo "==> Building site"
(cd "$ROOT" && bundle exec jekyll build --destination "$BUILD")

if ! grep -q "<h2>" "$BUILD/index.html"; then
  echo "error: build produced no resume sections" >&2
  exit 1
fi

echo "==> Serving build on :$PORT"
python3 -m http.server "$PORT" --directory "$BUILD" --bind 127.0.0.1 >/dev/null 2>&1 &
SERVER_PID=$!
disown "$SERVER_PID" 2>/dev/null || true
trap 'kill "$SERVER_PID" 2>/dev/null || true; rm -rf "$BUILD"' EXIT

for _ in $(seq 1 50); do
  if curl -sf -o /dev/null "http://127.0.0.1:$PORT/"; then break; fi
  sleep 0.1
done

PROFILE="$(mktemp -d)"
trap 'kill "$SERVER_PID" 2>/dev/null || true; rm -rf "$BUILD" "$PROFILE"' EXIT

echo "==> Printing to $OUT"
rm -f "$OUT"

# Chrome writes the PDF and then, in this build, stays resident. Run it in the
# background and stop it once the file has appeared and stopped growing.
"$CHROME" \
  --headless=new \
  --disable-gpu \
  --no-first-run \
  --no-default-browser-check \
  --user-data-dir="$PROFILE" \
  --run-all-compositor-stages-before-draw \
  --virtual-time-budget=10000 \
  --no-pdf-header-footer \
  --print-to-pdf-no-header \
  --print-to-pdf="$OUT" \
  "http://127.0.0.1:$PORT/" >/dev/null 2>&1 &
CHROME_PID=$!
trap 'kill "$CHROME_PID" "$SERVER_PID" 2>/dev/null || true; rm -rf "$BUILD" "$PROFILE"' EXIT

prev=-1
for _ in $(seq 1 120); do          # up to 60s
  if ! kill -0 "$CHROME_PID" 2>/dev/null; then break; fi
  size=$( [[ -f "$OUT" ]] && wc -c <"$OUT" || echo 0 )
  if [[ "$size" -gt 0 && "$size" -eq "$prev" ]]; then
    kill "$CHROME_PID" 2>/dev/null || true
    break
  fi
  prev="$size"
  sleep 0.5
done
wait "$CHROME_PID" 2>/dev/null || true

if [[ ! -s "$OUT" ]]; then
  echo "error: Chrome produced no PDF" >&2
  exit 1
fi

echo "==> Done: $OUT ($(du -h "$OUT" | cut -f1))"
