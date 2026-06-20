# [Team Name] Brain

Shared knowledge base for the [Team] team. Everything here — active work, procedures,
daily activity, and accumulated knowledge — lives as plain markdown in git so it's readable
by both the team and our AI agent.

**The folder is the asset. Obsidian is the human editor. Git is the audit trail.**

---

## What this repository is — and is not

This vault is for **[ORGANIZATION] work only**: projects, tasks, procedures, decisions,
team knowledge, and operational context.

It is not a personal journal, personal-life organizer, or secrets manager. Each user may
create a local `_private/` folder for scratch notes and draft thinking — that folder is
gitignored and never pushed to the shared repository.

For personal use outside work, use the public personal version of this framework:
**https://github.com/walterriopedre/brain-vault**

---

## Quick start

See `QUICKSTART.md` for the 5-step version, or `INSTALL.md` for the full setup guide.

---

## Layout

```
vault/
├── docs/            Human-readable guides — how this works, security, onboarding
├── knowledge/       Team expertise: systems, decisions, solutions, concepts
├── projects/        One folder per initiative
├── tasks/           Flat task store: open/ · in-progress/ · done/ · cancelled/
├── work-logs/       One dated file per day
├── meetings/        Work-related meeting notes
├── inbox/           Raw signals awaiting triage
├── runbooks/        Step-by-step procedures
├── people/          Internal and external contacts — one note per person
├── organizations/   Companies and teams relevant to work
├── _templates/      Starting points — copy, don't edit in place
├── archive/         Completed and retired material
├── _private/        Local only — gitignored, created by each user if needed
└── gotchas.md       Append-only log of failures, surprises, and dead ends
```

---

## The one rule

**The vault must be self-contained.** Every configuration, every rule, every AI instruction
lives in this folder — not in the AI app's settings, not in a cloud account, not in someone's
memory. If you hand this folder to someone new, or switch to a different AI model, the system
works exactly the same way with no additional setup.
