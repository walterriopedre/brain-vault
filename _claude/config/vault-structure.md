# Vault Structure & Conventions

## Folder layout

```text
vault/
├── personal/        # Optional personal-mode notes and guidance
├── business/        # Optional business-mode notes and guidance
├── shared/          # Reusable patterns for either mode
├── ai/              # AI usage guidance independent of one vendor
├── examples/        # Fake examples only
├── templates/       # Public-facing starter templates
├── docs/            # Human-readable guides
├── RAW/             # Source captures from Obsidian Web Clipper or similar tools
├── shared/knowledge/    # Durable systems, decisions, solutions, concepts
├── business/projects/   # Active projects
├── business/tasks/      # Flat task store: open, in-progress, done, cancelled
├── business/work-logs/  # Daily or session logs
├── business/meetings/   # Meeting notes
├── business/inbox/      # Operational intake for later triage
├── business/runbooks/   # Step-by-step procedures
├── business/people/     # Contact and stakeholder notes
├── business/organizations/ # Organization notes
├── _claude/         # Claude Code-compatible config and skills
├── _templates/      # Legacy Claude-compatible templates
├── archive/         # Completed or retired material
└── _private/        # Local only, gitignored
```

## Public template boundary

This repository should remain public-safe. Use fake examples only. Do not add real personal,
business, customer, employee, legal, medical, financial, regulated, or secret information.

## RAW captures

Use `RAW/` for captured source material from Obsidian Web Clipper or similar tools. This includes
articles, YouTube captures, PDFs, transcripts, audio messages, and other external source evidence.
Process these files with `business/runbooks/process-raw-captures.md`.

`RAW/` is source intake. `business/inbox/` is operational intake.

## Projects

Each project folder should contain a `README.md` or equivalent project context file. A project may
also contain notes, scripts, deliverables, or supporting materials if appropriate for the vault.

## Work logs

Use `business/work-logs/YYYY-MM-DD.md` for daily or session notes in a private configured vault. Public
template maintenance does not need fake activity logs unless explicitly requested.

## Runbooks

Runbooks should include owner, last reviewed date, prerequisites, steps, validation, escalation or
rollback, known issues, and change log.

## Naming conventions

- Folders: lowercase-with-hyphens.
- Date stamps: `YYYY-MM-DD`.
- Prefer one file per durable item when practical.
- Keep personal and business material separated unless the user explicitly chooses otherwise.
