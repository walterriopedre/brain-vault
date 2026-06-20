# AI Usage Guide

Brain Vault works best when AI assistants read the vault before giving advice or making changes.

---

## What The AI Should Read First

For general work:

1. `AGENTS.md`
2. `docs/how-this-works.md`
3. `docs/privacy-and-security.md`
4. Relevant project, task, runbook, or knowledge files
5. `shared/gotchas.md` before non-trivial operations

For Claude Code:

1. `CLAUDE.md`
2. `_claude/config/`
3. `_claude/skills/` when a skill applies

---

## Good AI Tasks

- Summarize open tasks.
- Turn notes into a runbook.
- Draft a project brief.
- Extract decisions from meeting notes.
- Find stale or inconsistent documentation.
- Create fake examples.
- Suggest folder structure improvements.

---

## Tasks That Need Human Approval

AI should not independently perform consequential actions such as:

- Sending external messages.
- Making production changes.
- Approving legal, financial, HR, medical, or compliance decisions.
- Publishing private information.
- Deleting or rewriting useful content.

The AI can propose. A human decides.

---

## Public Template Behavior

When working in this public repository, AI should use fake examples only. It should not invent real
people, companies, customers, statuses, metrics, or private facts.

---

## Prompt Pattern

Use this pattern for grounded work:

```text
Read the relevant vault files first. Use the vault as the source of truth. If something is missing,
say so. Do not invent facts. Then help me with: <task>.
```
