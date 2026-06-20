# FAQ

## What is Brain Vault?

Brain Vault is a local-first Markdown knowledge system for people who want durable context for
themselves, their teams, and their AI assistants.

It stores notes, projects, tasks, runbooks, decisions, and lessons learned in plain files. Git
keeps history. AI tools can read the vault to avoid starting every session from scratch.

---

## Can I use it for personal life?

Yes. Use a private clone for real personal material. The public repository should contain only
templates, docs, and fake examples.

Good personal uses include projects, learning, creative work, routines, household admin, and
personal knowledge.

---

## Can I use it for business?

Yes. Use a private business repository with access controls appropriate for the content.

Good business uses include team runbooks, project notes, decisions, meeting notes, onboarding
context, operating knowledge, and links to official systems.

---

## Can I mix personal and business content?

Only if you are deliberate about it. A mixed private vault should keep `personal/`, `business/`,
and `shared/` boundaries clear.

Do not put personal-life content into a team-owned business vault. Do not put company or customer
data into a personal vault unless you are allowed to store it there.

---

## Is Brain Vault a system of record?

No. Brain Vault is a context and working-knowledge layer.

Use official systems for tickets, contracts, HR records, customer records, accounting records,
security evidence, regulated data, approvals, and production audit logs. Link to those systems
instead of copying sensitive records into the vault.

---

## Is `_private/` secure?

No. `_private/` is only local and ignored by Git. It is useful for scratch notes and drafts, but
it is not encrypted, governed, or safe for secrets.

Use an approved password manager, key vault, or secrets manager for credentials.

---

## Does this require Claude Code?

No. Brain Vault is made of Markdown files. It can be used with Obsidian, VS Code, shell tools,
Claude Code, Codex, ChatGPT, or no AI at all.

Claude Code compatibility files are included because they are useful, not because the vault is
locked to Claude.

---

## Why use Git?

Git provides history, syncing, review, and recovery. It also makes the vault portable. You can
move the folder, clone it, inspect changes, or use it without a hosted service.

---

## What should stay out of the public repository?

Do not commit real personal data, business data, customer data, employee data, secrets, legal
records, medical records, financial records, regulated data, or private drafts.

Use fake examples only.

---

## How should I start?

Start with one real workflow in a private clone:

1. Create one project.
2. Create one task.
3. Capture one reusable note.
4. Add one runbook or checklist.
5. Ask your AI assistant to use the vault as context.

Keep the structure boring until real use proves you need more.
