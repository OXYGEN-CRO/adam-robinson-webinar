#!/usr/bin/env bash
set -euo pipefail
TASK_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
QMD_RUN="$TASK_ROOT/scripts/qmd.sh"
if STATE="$("$QMD_RUN" collection show adam-robinson-webinar 2>/dev/null)"; then
  STORED_PATH="$(printf '%s\n' "$STATE" | sed -n 's/^  Path: *//p')"
  [[ "$STORED_PATH" == "$TASK_ROOT" ]] || { echo "This named index already points at another folder: $STORED_PATH" >&2; exit 1; }
else
  "$QMD_RUN" collection add "$TASK_ROOT" --name adam-robinson-webinar --mask '**/*.md'
fi
"$QMD_RUN" context add qmd://adam-robinson-webinar 'Adam Robinson webinar: a blank second brain and content system, populated only from supplied sources.'
echo 'Search with: ./scripts/qmd.sh search backstory -c adam-robinson-webinar'
