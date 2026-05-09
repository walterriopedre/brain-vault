#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 /path/to/target-vault"
  exit 1
fi

TARGET="$1"

check_path() {
  local path="$1"
  if [ -e "$path" ]; then
    echo "[ok] $path"
  else
    echo "[missing] $path"
  fi
}

check_path "$TARGET/contacts"
check_path "$TARGET/inbox"
check_path "$TARGET/journal"
check_path "$TARGET/meetings"
check_path "$TARGET/ops"
check_path "$TARGET/ops/INDEX.md"
check_path "$TARGET/ops/SYSTEM-ARCHITECTURE.md"
check_path "$TARGET/ops/VAULT-OPERATIONS.md"
check_path "$TARGET/ops/OBSIDIAN-CLI.md"
check_path "$TARGET/ops/SOPs/SOP-001-ingest.md"
check_path "$TARGET/ops/SOPs/SOP-005-new-project.md"
check_path "$TARGET/ops/Guidelines/GL-001-canonical-home-and-naming.md"
check_path "$TARGET/projects"
check_path "$TARGET/raw"
check_path "$TARGET/sources"
check_path "$TARGET/wiki/concepts"
check_path "$TARGET/wiki/summaries"
check_path "$TARGET/wiki/topics"
check_path "$TARGET/templates/notes.md"
check_path "$TARGET/CONTEXT.md"
check_path "$TARGET/index.md"
check_path "$TARGET/log.md"
