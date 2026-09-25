# resume

Source and build pipeline for my CV.

## Contents

| File | Description |
| --- | --- |
| `solutions-architect-resume.md` | Resume content in Markdown — the source of truth for wording |
| `solutions-architect-resume.html` | Self-contained HTML + print CSS used for typesetting |
| `solutions-architect-resume.pdf` | Generated PDF — the file to send out |
| `build-resume.sh` | Renders the HTML to PDF |

Older Word-based CVs and the cover letter (`C.V_CARLOS_REQUENA_*`, `Cover letter.*`) are kept for reference.

## Building the PDF

```sh
./build-resume.sh
```

The script drives headless Google Chrome (`--print-to-pdf`), so the only requirement is Chrome
installed at `/Applications/Google Chrome.app`. No pandoc, LaTeX or other toolchain needed.
Output is written to `solutions-architect-resume.pdf`.

## Editing

Edit `solutions-architect-resume.md` for wording, mirror the change into
`solutions-architect-resume.html`, then re-run `./build-resume.sh`. The HTML is the file that
actually controls layout — the Markdown is not converted automatically.

## Design notes

The layout is deliberately ATS-friendly: single column, no colour blocks, graphics or sidebars,
and every Technical Expertise category is kept whole (`break-inside: avoid`) so a parser always
reads a heading immediately followed by its own terms. Contact details are real text, with
`mailto:` / `https:` links attached on top. Page setup is A4, Charter serif, subset-embedded by
Chrome so the PDF renders identically anywhere.
