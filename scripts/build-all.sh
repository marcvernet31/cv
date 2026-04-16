#!/usr/bin/env bash
# Build all CV variants (everything in variants/ except _template.tex)
#
# Usage:
#   ./scripts/build-all.sh
#
# Output: dist/<variant>.pdf for each variant

set -euo pipefail

REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SCRIPT="$REPO_ROOT/scripts/build.sh"

echo "Building all variants..."
echo ""

for tex_file in "$REPO_ROOT/variants/"*.tex; do
  variant="$(basename "$tex_file" .tex)"

  # Skip the scaffold template
  if [[ "$variant" == _* ]]; then
    continue
  fi

  bash "$SCRIPT" "$variant"
done

echo ""
echo "All variants built. PDFs in dist/"
ls "$REPO_ROOT/dist/"*.pdf 2>/dev/null | xargs -I{} basename {} | sed 's/^/  /'
