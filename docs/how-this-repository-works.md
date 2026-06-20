# How This Repository Works

## Purpose

This vault is a local-first, Git-backed knowledge workspace for AI-assisted work. Its purpose
is to help teams preserve, organize, and reuse operational knowledge across projects, tasks,
procedures, decisions, and lessons learned.

The goal is simple: **stop rebuilding context from scratch every time you use AI.**

Instead of starting every AI session with a long explanation of your environment, standards,
and prior decisions, this repository provides persistent context that both humans and AI can
read. The AI picks up where you left off — every session.

---

## What this repository is

- A shared knowledge workspace for team work
- A Markdown-based operational memory system
- A Git-backed record of how knowledge evolves over time
- A context layer that AI tools read before helping with work
- A team-owned asset independent of any single AI vendor

**The repository is the durable asset. The AI tool is only the interface.**

---

## What this repository is not

- A replacement for ticketing systems, wikis, or official systems of record
- A secrets manager — no passwords, tokens, keys, or connection strings
- A place for regulated data, customer data, HR records, or legal documents
- A personal-life vault — that lives separately at https://github.com/walterriopedre/brain-vault

---

## Shared work area

Everything committed to this repository is visible to all team members with repository access.
Content should be appropriate for that audience.

Core folders:

- `projects/` — active and historical project context
- `tasks/` — work items tracked inside the vault
- `work-logs/` — daily records of work performed and changes made
- `meetings/` — work-related meeting notes and decisions
- `runbooks/` — repeatable operational procedures
- `knowledge/` — reusable concepts, system docs, decisions, and incident solutions
- `gotchas.md` — lessons learned the hard way; append-only

---

## Private local area

Each user may create a local-only `_private/` folder. It is gitignored and never pushed
to the shared repository.

Use `_private/` for:
- Personal working notes and draft thinking
- 1-on-1 preparation
- Career planning notes
- Anything that helps you think but isn't ready for the shared vault

Do **not** use `_private/` for secrets, credentials, regulated data, or personal-life
content unrelated to work. See `docs/private-local-area.md` for the full rules.

---

## How AI uses this repository

Before helping with work, the AI reads team standards, current projects, prior decisions,
known systems, runbooks, open tasks, and gotchas. This grounds its answers in your actual
environment rather than generic recommendations.

The AI may help draft runbooks, summarize work, prepare status updates, search prior
decisions, convert notes into reusable knowledge, review scripts, and identify risks.

**Human approval rule:** AI output is assistance, not authority. A human must review and
approve consequential actions before execution. The AI may propose — the human decides.

---

## What belongs here

- Architecture decisions and their rationale
- Troubleshooting notes and incident solutions
- Repeatable procedures
- Environment context and known constraints
- Naming conventions and team standards
- Project notes and task breakdowns
- Lessons learned
- Meeting notes related to work
- Links to official systems of record
- Summaries of work already performed

## What does not belong here

- Passwords, tokens, secrets, private keys, or connection strings
- Customer data, regulated data, HR information, or legal records
- Personal-life content (journal, family, health, finances)
- Anything that should live only in an approved enterprise system

When in doubt: link to the official system instead of copying sensitive content here.

---

## Daily workflow

**Start of session:**
1. Pull the latest changes
2. Review active tasks and open inbox items
3. Ask the AI to load relevant context
4. Work normally

**End of session:**
1. Update relevant tasks
2. Add or update the work log
3. Capture reusable knowledge and gotchas
4. Commit and push

The goal is not extra documentation work — it's capturing knowledge as a byproduct of
doing the work.
