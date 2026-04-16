# CV Workshop

A Claude-assisted, multi-variant CV system built on LaTeX.

## Directory layout

```
base/               Shared LaTeX — preamble (packages/macros/colors) and header (contact info)
content/            Content library — full bullet pools, one file per role/section
  experience/         amazon-sde.tex, amazon-bi.tex, urv-research.tex
  skills.tex, certifications.tex, education.tex
variants/           One .tex per CV variant — assembles from base/ and content/
  sde-general.tex     Default general-purpose SWE CV
  _template.tex       Scaffold for new variants
knowledge/          Knowledge base for Claude — context about Marc beyond the CV
jobs/               Job posting analyses (created during the tailor workflow)
scripts/            Build automation
dist/               Output PDFs (git-ignored)
```

## Building

Requires pdflatex (installed via MacTeX on macOS):

```bash
# Build a specific variant
./scripts/build.sh sde-general          # → dist/sde-general.pdf

# Build all variants
./scripts/build-all.sh
```

## Creating a new variant

```bash
cp variants/_template.tex variants/sde-backend.tex
# Edit variants/sde-backend.tex — choose bullets, reorder skills
./scripts/build.sh sde-backend
```

See `CLAUDE.md` for authoring rules and the full Claude-assisted tailoring workflow.

## Prerequisites

```bash
# macOS
brew install --cask mactex-no-gui

# Verify
pdflatex --version
```

If `pdflatex` is not found after installation, add it to your PATH:

```bash
export PATH="/Library/TeX/texbin:$PATH"
```
