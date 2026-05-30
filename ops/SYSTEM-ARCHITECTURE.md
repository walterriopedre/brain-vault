# System Architecture

This vault implements a local-first knowledge system built around plain markdown files.

## Core truth

- The **vault** is the primary durable knowledge base.
- AI tools are interchangeable operators — the rules live in vault files, not tool configs.
- `raw/` is immutable after ingest.

## Ownership model

### 1. Vault
The vault owns durable human-readable knowledge:
- `wiki/summaries/`
- `wiki/concepts/`
- `wiki/topics/`
- `contacts/`
- `sources/`
- `books/`
- `journal/`
- `meetings/`
- `projects/`

### 2. Optional automation layer
An external runtime (scripts, cron, AI agents) may orchestrate automation, but all durable knowledge ends up back in the vault.

## Recommended vault structure

```text
contacts/
inbox/
journal/YYYY/MM/
meetings/
notes/
books/
projects/<project-name>/
raw/
sources/
tasks/
templates/
wiki/concepts/
wiki/summaries/
wiki/topics/
AGENTS.md
CODEX.md          ← or adapter for whichever AI tool you use
CONTEXT.md
index.md
log.md
```

## Project structure

```text
projects/<project-name>/
  PROJECT_CONTEXT.md   ← high-churn: current state, goals, blockers
  DECISIONS.md         ← low-churn: meaningful decisions and rationale
  TASKS.md             ← vault-local tasks
  NOTES.md             ← supporting notes
  ARTIFACTS/           ← outputs created by you or the AI
```

## Input routing

Route new inputs before writing anything.

- **External source** → `raw/` + `wiki/summaries/`
- **Book / reading note** → `books/` + promote durable ideas to `wiki/concepts/` or `wiki/topics/`
- **YouTube/video** → `raw/videos/` + `wiki/summaries/`
- **Personal event / reflection** → `journal/`
- **Unclassified quick capture** → `inbox/`
- **Project state / project work** → `projects/<project>/`
- **Durable idea or framework** → `wiki/concepts/`
- **Multi-source synthesis** → `wiki/topics/`

## Two-speed knowledge model

### High-churn notes
Can be updated aggressively:
- `journal/`
- `meetings/`
- `wiki/summaries/`
- `books/`
- `projects/*/PROJECT_CONTEXT.md`
- `projects/*/TASKS.md`
- `inbox/`

### Low-churn notes
Update carefully:
- `wiki/concepts/`
- `wiki/topics/`
- `sources/`
- `contacts/`
- `projects/*/DECISIONS.md`

If a low-churn page might need a risky rewrite, stage the finding first under `wiki/reviews/`.

## Contradiction and synthesis staging

Use `wiki/reviews/` for:
- contradictions that need review
- stale claims/pages
- synthesis candidates discovered across sources

Do not silently rewrite canonical pages when confidence is low.

## Migration policy

- Add first, migrate second, retire last.
- Prefer creating new structured homes before moving old files.
- Do not do broad renames or mass moves without explicit approval.

## AI-tool independence

The system should work with any assistant that can read files and write files. Adapters should stay thin — a few lines pointing to `AGENTS.md`. The operating logic belongs in vault files, not vendor-specific memory or config.

See `AGENTS.md` for operating rules and `ops/VAULT-OPERATIONS.md` for the intent routing layer.
