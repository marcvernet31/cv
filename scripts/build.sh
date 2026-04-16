#!/usr/bin/env bash
# Build a single CV variant to dist/<variant>.pdf
#
# Usage:
#   ./scripts/build.sh <variant-name>
#   ./scripts/build.sh sde-general
#
# Output: dist/<variant>.pdf

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VARIANT="${1:-sde-general}"
VARIANT_FILE="$REPO_ROOT/variants/${VARIANT}.tex"
OUT_DIR="$REPO_ROOT/dist"

if [ ! -f "$VARIANT_FILE" ]; then
  echo "Error: variant '$VARIANT' not found at variants/${VARIANT}.tex"
  echo ""
  echo "Available variants:"
  ls "$REPO_ROOT/variants/"*.tex 2>/dev/null | grep -v '_template' | xargs -I{} basename {} .tex | sed 's/^/  /'
  exit 1
fi

mkdir -p "$OUT_DIR"

# pdflatex resolves \input{} paths relative to CWD, so we must run from repo root
cd "$REPO_ROOT"

echo "Building variant: $VARIANT"
pdflatex -interaction=nonstopmode -output-directory="$OUT_DIR" "$VARIANT_FILE" > /dev/null 2>&1

# Run twice to resolve references (aux files)
pdflatex -interaction=nonstopmode -output-directory="$OUT_DIR" "$VARIANT_FILE" > /dev/null 2>&1

echo "Done: dist/${VARIANT}.pdf"
