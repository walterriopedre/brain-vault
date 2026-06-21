# Brain Vault

**Start here:** [Open the Brain Vault Overview](https://walterriopedre.github.io/brain-vault/)

Brain Vault is a local-first Markdown knowledge system for personal work, business work, shared
knowledge, and AI-assisted context.

The overview above is the human introduction. It explains what Brain Vault is, why it exists, how
personal and business boundaries work, and what kinds of users it is meant to help.

**The folder is the asset. Markdown is the format. Git is the history. AI is an optional working
partner.**

---

## Who Should Read What

| Audience | Start here | Purpose |
|----------|------------|---------|
| New users | [Brain Vault Overview](https://walterriopedre.github.io/brain-vault/) | Understand the idea before reading technical docs |
| People setting up a vault | [QUICKSTART.md](QUICKSTART.md) | Create a first working vault quickly |
| People doing a full setup | [INSTALL.md](INSTALL.md) | Configure a private personal, business, or mixed vault |
| AI assistants | [AGENTS.md](AGENTS.md) and [CLAUDE.md](CLAUDE.md) | Follow the vault operating contract |
| Existing Team Brain users | [docs/migration-from-team-brain.md](docs/migration-from-team-brain.md) | Understand what changed |

If you are reading this on GitHub before the website is enabled, the same overview lives at
[docs/index.html](docs/index.html).

---

## What This Repository Is

Brain Vault is:

- A practical folder structure for organizing durable knowledge.
- A public-safe template with fake examples only.
- A local-first workspace that works with Obsidian, VS Code, Claude Code, Codex, ChatGPT, or any
  tool that can read files.
- A capture workflow where source material lands in `RAW/` and durable ideas are promoted into
  `shared/knowledge/`.
- A way to make AI assistance less repetitive by giving it stable context.
- A system you can adapt for an individual, household, founder, team, department, or small
  business.

Brain Vault is not:

- A secrets manager.
- A replacement for official systems of record.
- A place to publish private personal, customer, employee, legal, medical, financial, regulated,
  or confidential data.
- Locked to one AI vendor or one note-taking app.

---

## Choose a Mode

Most users should start with one of these modes:

| Mode | Best for | Guide |
|------|----------|-------|
| Personal | Projects, learning, routines, household admin, creative work | [docs/personal-vault-guide.md](docs/personal-vault-guide.md) |
| Business | Team context, runbooks, decisions, project notes, operating knowledge | [docs/business-vault-guide.md](docs/business-vault-guide.md) |
| Shared | Reusable knowledge that belongs in both modes | [shared/README.md](shared/README.md) |

You can use one mode only, or keep personal and business material separated inside the same private
clone. If this repository is public, keep only templates, documentation, and fake examples here.

---

## Repository Layout

```text
brain-vault/
├── docs/            Human overview, guides, FAQ, security, customization notes
├── personal/        Personal projects, tasks, routines, notes
├── business/        Business-mode notes, projects, runbooks, meetings, tasks
├── shared/          Reusable patterns and durable shared knowledge
├── ai/              AI usage notes that are not tied to one vendor
├── examples/        Fake examples only
├── templates/       Public-facing templates for new notes
├── RAW/             Source captures before processing
├── _claude/         Claude Code-compatible config and skills
├── _templates/      Legacy Claude-compatible templates
├── archive/         Completed or retired material
└── _private/        Local-only notes, ignored by Git
```

Durable reusable knowledge lives under `shared/knowledge/`. Business-oriented work folders live
under `business/`.

Use `RAW/` as the landing folder for Obsidian Web Clipper and other source-capture tools. Process
captured articles, YouTube notes, PDFs, transcripts, and audio messages with
`business/runbooks/process-raw-captures.md`.

---

## GitHub Pages

This repository publishes the human overview from `docs/index.html`.

Expected public URL:

```text
https://walterriopedre.github.io/brain-vault/
```

The included GitHub Actions workflow deploys the `docs/` folder to GitHub Pages on pushes to
`main`. In GitHub repository settings, set **Pages -> Source** to **GitHub Actions** if it is not
already enabled.

---

## Public-Safe Rule

This repository should stay safe to publish. Use fake examples in the public template. Put real
personal, business, customer, employee, financial, medical, legal, regulated, or confidential
information only in a private clone with the right access controls.

Never commit secrets. Store references to approved secure systems, not secret values.
