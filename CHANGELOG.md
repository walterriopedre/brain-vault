# Changelog

All notable changes to this starter are documented here.

---

## [2026-05-10b] — Fix: ai-journal template and tasks/INDEX.md initial file

- `templates/ai-journal.md` added — installed to `wiki/concepts/ai-journal.md` by `install.sh`; SOP-009 references this file on task close
- `templates/tasks-index.md` added — installed to `tasks/INDEX.md` by `install.sh`; provides the starting structure for task tracking
- `bootstrap/install.sh` updated to install both files into the correct vault locations

---

## [2026-05-10] — Task management system and tool-independence principle

### Inspired by
[TomSolid/myPKA](https://github.com/TomSolid/myPKA) v1.9.0–v1.10.1: persistent task tracking with cross-reference frontmatter, per-agent journals, and session boot task-walk.

### Added

**`tasks/` folder structure**
Installed by `bootstrap/install.sh` as three status subdirectories:
- `tasks/open/` — tasks not yet started
- `tasks/in-progress/` — tasks actively being worked on
- `tasks/done/` — completed or cancelled tasks

**`templates/task.md`**
Task file template with six frontmatter fields for cross-referencing:
`wiki_refs`, `contact_refs`, `journal_refs`, `related_tasks`, plus `id`, `status`, `priority`, `assignee`.
Task ID scheme: `tsk-YYYY-MM-DD-NNN` for lexical and chronological sorting.

**Three new SOPs**
- `SOP-007-task-create` — when to create a task, how to fill the template, how to update INDEX.md
- `SOP-008-task-claim` — moving a task from open to in-progress
- `SOP-009-task-close` — closing a task, writing outcome, appending learned patterns to ai-journal

**`notes/` folder**
Added to `install.sh` as a default location for standalone notes (distinct from wiki, journal, and inbox).

### Changed

**`bootstrap/install.sh`**
- Added `tasks/open`, `tasks/in-progress`, `tasks/done`, and `notes/` to the directory scaffold
- Added `task.md` template and the three new SOPs to the `copy_if_missing` list

**`ops/INDEX.md`**
- Added SOP-007, SOP-008, SOP-009 to the SOPs section

**`ops/Guidelines/GL-001-canonical-home-and-naming.md`**
- Added `tasks/` and `notes/` path patterns to the naming conventions table

### Why

Tasks created during a session are lost when the context window resets unless they are persisted as vault files. This system ensures multi-session work survives tool restarts, tool switches, and context compaction — consistent with the framework's core principle that the vault is the durable layer, not the AI tool.

---

## [2026-04-13] — Initial release

Vault structure, templates, SOPs 001–006, guidelines, bootstrap installer.
