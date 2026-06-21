# Use Case Catalog

This catalog shows safe, adaptable ways to use Brain Vault. Examples are intentionally generic
and should be customized in a private clone.

---

## Personal Uses

### Personal Project Tracking

Use `business/projects/` or `personal/` to track creative work, home admin, learning goals, writing,
fitness planning, or side projects.

Good vault content:

- Project purpose.
- Next actions.
- Constraints.
- Decisions.
- Lessons learned.

Avoid storing sensitive records such as medical details, government IDs, account numbers, or
private documents in a public or poorly protected vault.

### Learning Notebook

Capture concepts, summaries, practice notes, and links to source material.
Use `RAW/` for clipped articles, YouTube notes, PDFs, transcripts, and audio messages before
promoting durable ideas into `shared/knowledge/`.

Good prompt:

```text
Use my learning notes and create a one-page review sheet. Mark anything that is unclear or
unsupported by the notes.
```

### Routine And Checklist Support

Store repeatable routines as simple checklists. Review them after a few repetitions and promote
stable routines into templates or runbooks.

---

## Business Uses

### Team Operating Knowledge

Capture how recurring work actually gets done: prerequisites, steps, validation, escalation, and
known failure modes.

Good prompt:

```text
Convert these notes into a runbook. Include prerequisites, steps, validation, escalation, and
known gotchas. Flag anything that needs owner approval.
```

### Project Context

Use project folders for purpose, scope, decisions, risks, links, and status. Keep official records
in official systems and link to them.

### Decision Records

Use decision templates for choices that people will ask about later. Capture context, options,
decision, and consequences.

### Meeting To Action Summary

Turn meeting notes into decisions, tasks, and follow-ups. Avoid capturing private HR, legal,
customer, or regulated content unless the vault is approved for it.

### Onboarding Context

Document how to get oriented: glossary, systems, runbooks, common questions, and who owns what.

---

## Shared Uses

### Knowledge Library

Use `shared/knowledge/` for durable concepts, systems, decisions, and solutions that should survive
individual projects.
Use `RAW/` as the source-capture inbox that feeds this library when a captured article, video,
audio message, or document contains reusable knowledge.

### Gotchas Log

Use `shared/gotchas.md` for surprises, dead ends, failures, and hidden constraints that someone would
want to know before trying the same thing again.

### AI Context Pack

Use `AGENTS.md`, `CLAUDE.md`, `ai/`, and `docs/ai-usage-guide.md` to tell AI assistants how to
operate safely inside the vault.

---

## Poor Fits

Brain Vault is not a good place for:

- Secrets or credentials.
- Raw customer files.
- HR records.
- Medical records.
- Legal evidence or privileged material.
- Production audit logs.
- Final approvals that belong in official systems.

When in doubt, link to the official system instead of copying the record.
