#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 1 ]; then
  echo "Usage: $0 /path/to/target-vault"
  exit 1
fi

TARGET="$1"

mkdir -p "$TARGET"/contacts
mkdir -p "$TARGET"/inbox
mkdir -p "$TARGET"/journal
mkdir -p "$TARGET"/meetings
mkdir -p "$TARGET"/ops/SOPs
mkdir -p "$TARGET"/ops/Guidelines
mkdir -p "$TARGET"/projects
mkdir -p "$TARGET"/raw
mkdir -p "$TARGET"/sources
mkdir -p "$TARGET"/wiki/concepts
mkdir -p "$TARGET"/wiki/summaries
mkdir -p "$TARGET"/wiki/topics
mkdir -p "$TARGET"/templates

copy_if_missing() {
  local src="$1"
  local dest="$2"
  if [ ! -e "$dest" ]; then
    cp "$src" "$dest"
  fi
}

ROOT="$(cd "$(dirname "$0")/.." && pwd)"

copy_if_missing "$ROOT/templates/CONTEXT.template.md" "$TARGET/CONTEXT.md"
copy_if_missing "$ROOT/templates/index.template.md" "$TARGET/index.md"
copy_if_missing "$ROOT/templates/contact.md" "$TARGET/templates/contact.md"
copy_if_missing "$ROOT/templates/daily.md" "$TARGET/templates/daily.md"
copy_if_missing "$ROOT/templates/meeting.md" "$TARGET/templates/meeting.md"
copy_if_missing "$ROOT/templates/note.md" "$TARGET/templates/note.md"
copy_if_missing "$ROOT/templates/notes.md" "$TARGET/templates/notes.md"
copy_if_missing "$ROOT/templates/project-context.md" "$TARGET/templates/project-context.md"
copy_if_missing "$ROOT/templates/source.md" "$TARGET/templates/source.md"
copy_if_missing "$ROOT/templates/summary.md" "$TARGET/templates/summary.md"
copy_if_missing "$ROOT/templates/topic.md" "$TARGET/templates/topic.md"
copy_if_missing "$ROOT/templates/tasks.md" "$TARGET/templates/tasks.md"
copy_if_missing "$ROOT/templates/decisions.md" "$TARGET/templates/decisions.md"
copy_if_missing "$ROOT/ops/INDEX.md" "$TARGET/ops/INDEX.md"
copy_if_missing "$ROOT/ops/SYSTEM-ARCHITECTURE.md" "$TARGET/ops/SYSTEM-ARCHITECTURE.md"
copy_if_missing "$ROOT/ops/VAULT-OPERATIONS.md" "$TARGET/ops/VAULT-OPERATIONS.md"
copy_if_missing "$ROOT/ops/OBSIDIAN-CLI.md" "$TARGET/ops/OBSIDIAN-CLI.md"
copy_if_missing "$ROOT/ops/SOPs/README.md" "$TARGET/ops/SOPs/README.md"
copy_if_missing "$ROOT/ops/SOPs/SOP-001-ingest.md" "$TARGET/ops/SOPs/SOP-001-ingest.md"
copy_if_missing "$ROOT/ops/SOPs/SOP-002-journal-entry.md" "$TARGET/ops/SOPs/SOP-002-journal-entry.md"
copy_if_missing "$ROOT/ops/SOPs/SOP-003-new-contact.md" "$TARGET/ops/SOPs/SOP-003-new-contact.md"
copy_if_missing "$ROOT/ops/SOPs/SOP-004-health-check.md" "$TARGET/ops/SOPs/SOP-004-health-check.md"
copy_if_missing "$ROOT/ops/SOPs/SOP-005-new-project.md" "$TARGET/ops/SOPs/SOP-005-new-project.md"
copy_if_missing "$ROOT/ops/SOPs/SOP-006-meeting-ingestion.md" "$TARGET/ops/SOPs/SOP-006-meeting-ingestion.md"
copy_if_missing "$ROOT/ops/Guidelines/README.md" "$TARGET/ops/Guidelines/README.md"
copy_if_missing "$ROOT/ops/Guidelines/GL-001-canonical-home-and-naming.md" "$TARGET/ops/Guidelines/GL-001-canonical-home-and-naming.md"
copy_if_missing "$ROOT/ops/Guidelines/GL-002-vault-architecture-routing.md" "$TARGET/ops/Guidelines/GL-002-vault-architecture-routing.md"
copy_if_missing "$ROOT/ops/Guidelines/GL-003-wiki-page-schema.md" "$TARGET/ops/Guidelines/GL-003-wiki-page-schema.md"

if [ ! -e "$TARGET/log.md" ]; then
  cat > "$TARGET/log.md" <<'EOF'
# Log

Append-only operational record for important vault actions.
EOF
fi

echo "Starter structure installed into: $TARGET"
