#!/bin/sh
# Renders solutions-architect-resume.html to PDF using headless Google Chrome.
# No other toolchain required.
set -e

DIR=$(cd "$(dirname "$0")" && pwd)
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
SRC="$DIR/solutions-architect-resume.html"
OUT="$DIR/solutions-architect-resume.pdf"

[ -x "$CHROME" ] || { echo "Chrome not found at: $CHROME" >&2; exit 1; }
[ -f "$SRC" ]    || { echo "Source not found at: $SRC" >&2; exit 1; }

"$CHROME" --headless --disable-gpu \
  --no-pdf-header-footer \
  --virtual-time-budget=2000 \
  --print-to-pdf="$OUT" \
  "file://$SRC"

echo "Wrote $OUT"
