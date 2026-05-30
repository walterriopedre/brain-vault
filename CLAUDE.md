# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What This Repo Is

This is a **documentation and methodology framework** — not a software project. There are no build steps, package managers, or test suites. It is a starter kit for setting up a personal knowledge vault (plain-text, markdown-based) that any AI assistant can operate.

The repo ships a canonical vault structure, operating procedures, and templates. Users run the bootstrap script once to install the vault, then work inside it with an AI assistant.

## Setup & Verification

```bash
# Install the vault into a target directory
bash bootstrap/install.sh

# Verify the vault is correctly structured
bash bootstrap/doctor.sh
```

Both scripts are non-destructive — they only create files and folders that don't already exist.

## Architecture

The system has four layers:

1. **Vault layer** — the user's actual knowledge files (journal, projects, wiki, contacts, etc.). Created by `install.sh`, lives outside this repo after install.
2. **Operations layer** (`ops/`) — reference docs: `INDEX.md` (read order), `SYSTEM-ARCHITECTURE.md` (principles), `VAULT-OPERATIONS.md` (intent routing), `SOPs/` (9 procedures), `Guidelines/` (3 static rule sets). Copied into installed vaults.
3. **Template layer** (`templates/`) — 20 markdown scaffolds for every content type. Copied into `vault/templates/` on install.
4. **Optional automation** (`integrations/`, `optional/`) — cron, scripts, and external tool adapters. None are required for the vault to function.

**Key runtime files** installed at vault root by `install.sh`:
- `AGENTS.md` — master coordinator file for any AI tool; contains all operating rules, workflows, and conventions
- `CODEX.md` — thin adapter pointing the AI to `AGENTS.md` (replace with the adapter for your tool)

## Core Design Rules

**The vault is the source of truth.** Assistants are interchangeable operators. Never store durable knowledge in AI memory or tool-specific config — it always goes into vault files.

**Canonical home principle** (GL-001, GL-002): every fact has exactly one home; everything else links to it. Key routing:
- External sources → `raw/` then `wiki/summaries/`
- Transcripts → `raw/` then `meetings/`
- Unclassified → `inbox/`
- Durable ideas → `wiki/concepts/`
- Multi-source synthesis → `wiki/topics/`

**Two-speed model:**
- *High-churn* (edit freely): journal, meetings, summaries, `CONTEXT.md`, tasks, inbox
- *Low-churn* (change carefully): concepts, topics, sources, contacts, decisions

**Additive over destructive:** prefer growing the vault over cleanup or refactoring.

## Vault Structure (post-install)

```
books/
contacts/
inbox/
journal/YYYY/MM/
meetings/
notes/
ops/                    ← copied from this repo's ops/
projects/<name>/
  PROJECT_CONTEXT.md   ← high-churn: current state
  DECISIONS.md         ← low-churn: rationale
  TASKS.md
  NOTES.md
  ARTIFACTS/
raw/
raw/videos/
sources/
tasks/open|in-progress|done/
templates/             ← copied from this repo's templates/
wiki/concepts/
wiki/reviews/
wiki/summaries/
wiki/topics/
AGENTS.md              ← master AI operating rules (read at session start)
CODEX.md               ← AI tool adapter (edit to match your tool)
CONTEXT.md             ← hot cache of vault state (read first each session)
index.md               ← catalog
log.md                 ← append-only operational log
```

## Naming Conventions (GL-001)

| Content type | Pattern |
|---|---|
| Contacts | `contacts/Full Name.md` |
| Sources | `sources/Full Name.md` |
| Journal entries | `journal/YYYY/MM/YYYY-MM-DD HH-MM.md` |
| Wiki summaries | `wiki/summaries/<source-title>.md` |
| Tasks | `tasks/open\|in-progress\|done/tsk-YYYY-MM-DD-NNN.md` |
| SOPs | `ops/SOPs/SOP-NNN-<slug>.md` |

## Operations (VAULT-OPERATIONS.md)

Ten core operations map natural language intents to vault actions:

| Intent | Operation |
|---|---|
| "bring me up to speed" | `recap` |
| "find what we know about X" | `find` |
| "save this" | `save` |
| "process this source" | `ingest` |
| "turn this into a project" | `project` |
| "add/update a task" | `task` |
| "record a decision" | `decide` |
| "review a period or area" | `review` |
| "check vault health" | `health` |
| "write a journal entry" | `journal` |

Each operation maps to one or more SOPs in `ops/SOPs/`.

## Starting a Session in an Installed Vault

Read in this order before taking any action:
1. `AGENTS.md` — operating rules, mandate, workflows, conventions
2. `CONTEXT.md` — current vault state hot cache
3. `tasks/INDEX.md` — any open or in-progress tasks
4. Relevant project's `PROJECT_CONTEXT.md` if working on a specific project

## Adding to This Repo

When extending the framework (new SOPs, templates, guidelines):
- SOPs go in `ops/SOPs/` as `SOP-NNN-<slug>.md` and are mirrored to `docs/`
- Guidelines go in `ops/Guidelines/` as `GL-NNN-<slug>.md`
- Templates go in `templates/` and must be registered in `install.sh`
- Update `ops/INDEX.md` and `CHANGELOG.md` for any ops-layer changes
