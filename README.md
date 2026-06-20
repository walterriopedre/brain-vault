# Brain Vault

Brain Vault is a public-safe starter repository for building a local-first Markdown knowledge
system that humans and AI assistants can both use.

Use it for personal life, business work, or a clearly separated mix of both. The vault keeps
projects, tasks, notes, runbooks, decisions, lessons learned, and AI operating instructions in
plain files you own.

**The folder is the asset. Markdown is the format. Git is the history. AI is an optional
working partner.**

---

## What This Repository Is

Brain Vault is:

- A practical folder structure for organizing durable knowledge.
- A public template with fake examples only.
- A local-first workspace that works with Obsidian, VS Code, Claude Code, Codex, ChatGPT, or
  any tool that can read files.
- A way to make AI assistance less repetitive by giving it stable context.
- A system you can adapt for an individual, household, founder, team, department, or small
  business.

Brain Vault is not:

- A secrets manager.
- A replacement for official systems of record.
- A place to publish private personal, customer, employee, legal, medical, financial, or regulated
  data.
- Locked to one AI vendor or one note-taking app.

---

## Choose a Mode

Most users should start with one of these modes:

| Mode | Best for | Start here |
|------|----------|------------|
| Personal | Projects, learning, routines, household admin, creative work | `docs/personal-vault-guide.md` |
| Business | Team context, runbooks, decisions, project notes, operating knowledge | `docs/business-vault-guide.md` |
| Shared | Reusable knowledge that belongs in both modes | `shared/README.md` |

You can use one mode only, or keep personal and business material separated inside the same
private clone. If this repository is public, keep only templates, documentation, and fake examples
here.

---

## Layout

```text
brain-vault/
├── personal/        Personal projects, tasks, routines, notes
├── business/        Optional business-mode notes and guides
├── shared/          Reusable patterns that can serve either mode
├── ai/              AI usage notes that are not tied to one vendor
├── examples/        Fake examples only
├── templates/       Public-facing templates for new notes
├── docs/            Guides, FAQ, security, customization, migration notes
├── shared/knowledge/    Durable knowledge: systems, decisions, solutions, concepts
├── business/projects/   One folder per initiative
├── business/tasks/      Flat task store: open, in-progress, done, cancelled
├── business/work-logs/  Daily or session-based activity logs
├── business/meetings/   Meeting notes and decision records
├── business/inbox/      Raw notes waiting to be sorted
├── business/runbooks/   Step-by-step procedures
├── business/people/     Contact and stakeholder notes
├── business/organizations/ Organization notes
├── _claude/         Claude Code-compatible config and skills
├── _templates/      Legacy Claude-compatible templates
├── archive/         Completed or retired material
└── _private/        Local-only notes, ignored by Git
```

The legacy business-oriented root work folders now live under `business/`, while durable reusable
knowledge lives under `shared/knowledge/`.

---

## Quick Start

Read `QUICKSTART.md` for the short setup path.

For the full walkthrough, read `INSTALL.md`, then choose:

- `docs/personal-vault-guide.md` for an individual vault.
- `docs/business-vault-guide.md` for a work or team vault.
- `docs/ai-usage-guide.md` for using the vault with AI assistants.

---

## Public-Safe Rule

This repository should stay safe to publish. Use fake examples in the public template. Put real
personal, business, customer, employee, financial, medical, legal, or regulated information only
in a private clone with the right access controls.

Never commit secrets. Store references to approved secure systems, not secret values.
