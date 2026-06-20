# How This Works

Brain Vault is a folder of Markdown files that becomes more useful as it captures decisions,
projects, tasks, runbooks, and lessons learned.

The goal is simple: stop rebuilding context from scratch.

---

## The Three Layers

### 1. Vault Structure

Folders give information a predictable home:

- `business/projects/` for initiatives.
- `business/tasks/` for actionable work.
- `business/work-logs/` for daily or session history.
- `business/runbooks/` for repeatable procedures.
- `shared/knowledge/` for durable understanding.
- `business/inbox/` for unsorted material.
- `business/people/` and `business/organizations/` for relationship context.

### 2. Operating Rules

Files such as `AGENTS.md`, `CLAUDE.md`, and `_claude/config/` tell AI assistants how to work in
the vault.

The rules live in the repository so the system stays portable. If you change AI tools, the
instructions remain with the vault.

### 3. Templates And Examples

Templates help you create consistent notes. Examples show the shape of a filled-in note without
using real private data.

Use:

- `templates/` for public-facing starter files.
- `_templates/` for legacy Claude-compatible templates.
- `examples/` for fake examples only.

---

## Personal, Business, And Shared Areas

Brain Vault supports multiple modes:

- `personal/` for private personal organization.
- `business/` for work or team organization.
- `shared/` for reusable patterns that serve either mode.

Business-oriented work folders now live under `business/`. Durable reusable knowledge lives under
`shared/knowledge/`.

---

## How AI Uses The Vault

An AI assistant can read the vault before helping. That gives it stable context:

- What projects exist.
- What tasks are open.
- What decisions have already been made.
- What procedures are known.
- What gotchas have happened before.

AI output is still assistance, not authority. A human remains responsible for consequential
decisions and actions.

---

## Public Template Rule

This repository should stay safe to publish.

Use fake examples in public. Put real personal or business content only in a private clone with
the right access controls.
