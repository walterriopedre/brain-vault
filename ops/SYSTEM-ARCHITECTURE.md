# System Architecture

This vault implements a local-first knowledge system built around plain markdown files inside Obsidian.

## Core idea

The vault is the durable system of record. Assistants help maintain, retrieve, and synthesize knowledge, but the knowledge itself stays in files you own.

## Core layers

1. Vault layer
   - journal
   - projects
   - wiki-style knowledge pages
   - contacts
   - sources
   - raw captures

2. Operations layer
   - `ops/INDEX.md`
   - SOPs
   - Guidelines
   - operating references

3. Template layer
   - reusable note templates
   - example files
   - bootstrap scaffolding

4. Optional automation layer
   - cron jobs
   - local scripts
   - assistant runtimes
   - external connectors

## Recommended vault structure

```text
contacts/
inbox/
journal/YYYY/MM/
meetings/
ops/
projects/<project-name>/
raw/
sources/
templates/
wiki/concepts/
wiki/summaries/
wiki/topics/
index.md
CONTEXT.md
log.md
```

## Project structure

```text
projects/<project-name>/
  PROJECT_CONTEXT.md
  DECISIONS.md
  TASKS.md
  NOTES.md
  ARTIFACTS/
```

## Durability rules

- Raw captures are preserved and treated as immutable.
- Durable facts should have one canonical home.
- Prefer additive changes over destructive cleanup.
- Use links instead of copying the same fact everywhere.
- Keep the vault understandable without requiring one specific AI tool.

## AI-tool independence

The system should work with any assistant that can:
- read files
- write files
- follow instructions
- avoid destructive behavior

Adapters should stay thin. The operating logic belongs in vault files, not vendor-specific memory or config.

## Obsidian CLI

The Obsidian CLI is optional but recommended for vault interaction. It keeps Obsidian's graph, metadata cache, and search indexes consistent. Plain file writes still work as a fallback.

See [[ops/OBSIDIAN-CLI]] for the command reference.
