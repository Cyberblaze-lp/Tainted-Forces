#!/bin/bash
echo "driver called!"
OURS="$1"
BASE="$2"
THEIRS="$3"
FILEPATH="$4"

REPO_ROOT="$(git rev-parse --show-toplevel)"
IGNORE_LIST="$REPO_ROOT/.git-ignored-files"

is_in_ignore_list() {
    local file="$1"
    grep -Fxq "$file" "$IGNORE_LIST" 2>/dev/null
}

if [ -f "$IGNORE_LIST" ] && is_in_ignore_list "$FILEPATH"; then
    # File is in the ignore list → take remote version
    cp "$THEIRS" "$OURS"
    echo "Merge driver: resolved '$FILEPATH' by taking remote (listed in .git-ignored-files)."
    exit 0
else
    # Not in the list → do a normal three‑way merge
    git merge-file "$OURS" "$BASE" "$THEIRS"
    exit $?   # propagate merge-file's exit code
fi