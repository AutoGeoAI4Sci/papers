#!/usr/bin/env bash
# Mirror rayford-knowledge-atlas/publications/ into my-publications/.
#
# The atlas is the source of truth: PDFs and both README tables are copied
# verbatim, and only the relative links that would break outside the atlas
# (../wiki/..., ../../wiki/...) are rewritten to absolute GitHub URLs.
#
# Usage: scripts/sync-my-publications.sh <path-to-atlas-publications-dir>
set -euo pipefail

SRC="${1:?usage: $0 <atlas publications dir>}"
DEST="$(cd "$(dirname "$0")/.." && pwd)/my-publications"
ATLAS="https://github.com/rayford295/rayford-knowledge-atlas"
BANNER="> **Mirror.** Synced automatically from [rayford-knowledge-atlas/publications]($ATLAS/tree/main/publications). Edit there, not here; this folder is overwritten on every sync."

[ -f "$SRC/README.md" ] || { echo "not an atlas publications dir: $SRC" >&2; exit 1; }

mkdir -p "$DEST"
rsync -a --delete --exclude '.DS_Store' "$SRC/" "$DEST/"

find "$DEST" -name README.md -print0 | while IFS= read -r -d '' f; do
  sed -i.bak -E "s#\]\((\.\./)+wiki/#](${ATLAS}/blob/main/wiki/#g" "$f"
  # Insert the mirror banner after the first heading.
  awk -v b="$BANNER" 'NR==1{print; print ""; print b; next} {print}' "$f" > "$f.tmp"
  mv "$f.tmp" "$f"
  rm -f "$f.bak"
done

echo "Synced $(find "$DEST" -name '*.pdf' | wc -l | tr -d ' ') PDFs into $DEST"
