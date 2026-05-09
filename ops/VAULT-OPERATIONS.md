# Vault Operations

Use natural language instead of memorizing commands. Map user intent to a small set of repeatable operations.

## Core operations

- `recap` — bring me up to speed
- `find` — find what we know about a topic
- `save` — save this in the right place
- `ingest` — process a source into durable knowledge
- `project` — turn this into project work
- `task` — add or update actionable work
- `decide` — record a decision and rationale
- `review` — review a period, area, or workflow
- `health` — check structure, drift, contradictions, or stale pages
- `journal` — write a journal entry

## Routing examples

- "Bring me up to speed" -> `recap`
- "Find what we know about X" -> `find`
- "Save this" -> `save`
- "Turn this into project work" -> `project`
- "Record the decision" -> `decide`
- "Review this week" -> `review`
- "Check the vault structure" -> `health`
- "Write this to the journal" -> `journal`

## Principles

- Prefer existing workflows over inventing new ones.
- Create new pages when that is safer than editing broad shared pages.
- Search before creating a new page.
- Keep summaries separate from raw sources.
- Capture reasoning when it will matter later.

## Execution layer

This file is the intent-routing layer. For step-by-step execution instructions, see `ops/SOPs/`. For static reference rules, see `ops/Guidelines/`.
