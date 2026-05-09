# Optional Team Model

This folder is for users who want a multi-role assistant pattern.

The core starter works with a single assistant. The team model is an extension and should be added only after the single-assistant setup is working.

## What the team model adds

Instead of one generalist assistant, you define named specialist roles:
- a coordinator that manages routing and session state
- a journal specialist for personal entries and contact maintenance
- a research specialist for source ingestion and wiki synthesis
- additional specialists for automation, projects, or domain-specific work

Each role gets its own identity file and reads from the same installed operating layer inside the vault.

## Relationship to ops

The team model does not replace the vault operating system. It layers on top of:

- `ops/INDEX.md`
- `ops/SOPs/`
- `ops/Guidelines/`

For example:
- a journal specialist owns SOP-002 and SOP-003
- a research specialist owns SOP-001 and SOP-004
- the coordinator owns SOP-005 and cross-role routing

## Staying tool-agnostic

Define roles as vault files, not vendor-specific configuration. Any assistant that can read the role file and the installed `ops/` layer can fulfill that role.
