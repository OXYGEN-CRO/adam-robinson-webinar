#!/usr/bin/env bash
# Keep this template in its own index and use qmd's matching Node installation.
set -euo pipefail
QMD_COMMAND="$(command -v qmd)" || { echo "qmd is not installed. Use rg until it is available." >&2; exit 127; }
QMD_ENTRY="$(python3 -c 'import os, sys; print(os.path.realpath(sys.argv[1]))' "$QMD_COMMAND")"
QMD_PREFIX="${QMD_ENTRY%%/lib/node_modules/*}"
QMD_NODE="$QMD_PREFIX/bin/node"
if [[ -x "$QMD_NODE" ]]; then
  export PATH="$(dirname "$QMD_NODE"):$PATH"
  exec "$QMD_NODE" "$QMD_ENTRY" --index adam-robinson-webinar "$@"
fi
exec "$QMD_COMMAND" --index adam-robinson-webinar "$@"
