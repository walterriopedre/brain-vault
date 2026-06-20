# Vault Structure & Conventions

## Folder layout

```
vault/
├── docs/            # Human-readable guides — how this works, security, onboarding
├── knowledge/       # LLM-maintained knowledge layer (systems, decisions, solutions, concepts)
├── projects/        # Active projects (one subfolder per initiative)
├── tasks/           # Flat task store: open/ · in-progress/ · done/ · cancelled/
├── work-logs/       # Daily activity log (one file per day, YYYY-MM-DD.md)
├── meetings/        # Work-related meeting notes
├── inbox/           # Raw intake — emails, articles, notes for Claude to process
├── runbooks/        # Step-by-step operational procedures
├── people/          # Internal and external contacts — one note per person
├── organizations/   # Companies and teams relevant to work
├── _templates/      # Starting points — copy when creating something new
├── archive/         # Completed or retired material
└── _private/        # Local only — gitignored, created by each user if needed
```

## Work-only boundary

This vault is for work content only. Do not add personal-life folders or content.
For personal use, use the public personal version: https://github.com/walterriopedre/brain-vault

## Projects

Each project folder contains a `README.md`, and optionally `scripts/`, `data/`,
`deliverables/`, and `communications/`. A project moves to `archive/` (prefixed with
`YYYY-MM-`) when fully done.

## Work logs

Every work session produces a `work-logs/YYYY-MM-DD.md` entry. Mandatory structure:
- Narrative grouped by project or theme
- `## Follow-ups` for open items
- `## Changes` table at the end — the audit trail for what changed that day

## Runbooks

Named `<verb-noun>.md` (e.g. `process-new-client.md`). Must include: Owner, Last reviewed
date, Prerequisites, Steps with expected output, Validation, and Rollback. Add a Change
log at the bottom when updated.

## Naming conventions

- Folders: lowercase-with-hyphens
- Files: inherit their source convention; date stamps use ISO `YYYY-MM-DD`
- Timestamps in frontmatter: ISO 8601
