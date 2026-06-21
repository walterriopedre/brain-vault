# Business Vault Guide

Use a business Brain Vault to preserve team operating knowledge, project context, decisions,
runbooks, and lessons learned.

---

## Recommended Starting Structure

Start with:

- `business/` for business-mode notes.
- `business/projects/` for initiatives.
- `business/tasks/` for actionable work.
- `business/meetings/` for notes and decisions.
- `business/runbooks/` for procedures.
- `RAW/` for source captures before processing.
- `shared/knowledge/` for durable systems, decisions, solutions, and concepts.
- `shared/gotchas.md` for failures and surprises.

---

## What Belongs Here

- Project purpose, scope, status, risks, and decisions.
- Runbooks and operating procedures.
- Meeting summaries and action items.
- Links to official systems of record.
- Source captures that are safe for the repository audience, staged first in `RAW/`.
- Lessons learned and reusable explanations.
- Fake examples in the public template.

---

## What Does Not Belong Here

- Secrets.
- Raw customer records.
- HR records.
- Legal evidence or privileged material.
- Medical or regulated records.
- Financial source records.
- Anything the repository audience should not be able to read.

---

## Suggested Templates

- `templates/business/project-brief.md`
- `templates/business/team-runbook.md`
- `templates/shared/decision.md`
- `templates/shared/task.md`
- `_templates/knowledge-decision.md`

---

## AI Guidance

AI assistants can help draft, summarize, organize, and check consistency. They should not be treated
as final approvers for consequential business actions.

Good prompt:

```text
Read the project brief, open tasks, and gotchas. Summarize what is open, stale, risky, or missing.
```
