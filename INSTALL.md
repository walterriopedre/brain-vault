# INSTALL.md - Brain Vault Setup Guide

Brain Vault is a public-safe, local-first Markdown knowledge vault. It can support personal use,
business use, or a carefully separated mix of both.

This guide explains how to turn the template into a working private vault.

---

## 1. Decide What This Vault Is For

Choose one mode:

- **Personal:** personal projects, learning, routines, creative work, household admin.
- **Business:** team operating knowledge, runbooks, project context, decisions, meeting notes.
- **Mixed:** both personal and business material, separated clearly by folder and audience.

Recommended folders:

- Personal mode: `personal/`, `business/projects/` if you still want project tracking,
  `business/tasks/`, `shared/knowledge/`, `_private/`.
- Business mode: `business/`, `business/projects/`, `business/tasks/`, `business/runbooks/`,
  `business/meetings/`, `shared/knowledge/`, `shared/gotchas.md`.
- Shared reusable material: `shared/`, `shared/knowledge/`, `templates/`, `examples/`.

For real content, use a private repository or local folder with the right access controls.

---

## 2. Install The Basics

### Git

Git keeps history and helps sync the vault.

Verify:

```bash
git --version
```

Configure once:

```bash
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

### Editor

Use any editor that works with folders of Markdown files.

Recommended:

- Obsidian for notes and backlinks.
- VS Code or another text editor for direct file editing.

### Optional AI Tool

Use any AI assistant that can read files. Claude Code compatibility is included through:

- `CLAUDE.md`
- `AGENTS.md`
- `_claude/`

Other assistants should start with `AGENTS.md` and `docs/ai-usage-guide.md`.

---

## 3. Clone Or Copy The Template

```bash
git clone <repository-url>
cd <repository-folder>
```

If the vault will contain private material, create a private repository for your own copy.

---

## 4. Create Local Private Notes

Create `_private/` only if you want local scratch notes that never get committed.

```bash
mkdir _private
```

Do not use `_private/` for secrets or regulated data. It is ignored by Git, not a secure vault.

---

## 5. Configure The Operating Contract

Edit `AGENTS.md` in your private clone.

Set:

- Vault mode: personal, business, or mixed.
- Intended audience.
- Session start scan.
- Session end ritual.
- Sensitive data rules.
- Systems of record.
- Any domain-specific rules.

If using Claude Code, also review:

- `CLAUDE.md`
- `_claude/config/core-principles.md`
- `_claude/config/vault-structure.md`
- `_claude/config/knowledge-layer.md`
- `_claude/config/obsidian-rules.md`

---

## 6. Start With One Real Workflow

Do not customize everything up front. Start with one workflow.

Good first workflows:

- Personal project planning.
- Weekly review.
- Team runbook creation.
- Meeting-to-action summary.
- Decision record capture.
- Gotcha logging.

Suggested first files:

- One project in `business/projects/`.
- One task in `business/tasks/open/`.
- One reusable note in `shared/knowledge/`.
- One runbook in `business/runbooks/`.
- One local scratch note in `_private/`.

---

## 7. Use Templates

Public-facing templates live in `templates/`.

- `templates/personal/`
- `templates/business/`
- `templates/shared/`

Legacy Claude-compatible templates remain in `_templates/`.

Copy templates before editing them for real use.

---

## 8. Keep The Public Template Safe

This public repository should contain:

- Documentation.
- Templates.
- Fake examples.
- Public-safe AI instructions.

It should not contain:

- Real personal data.
- Real company or customer data.
- Employee records.
- Legal, medical, financial, or regulated records.
- Passwords, tokens, API keys, private keys, certificates, or connection strings.

---

## 9. Recommended First AI Prompt

After opening the vault with an AI assistant, say:

```text
Read AGENTS.md and docs/ai-usage-guide.md. Treat this as a Brain Vault. Use the vault as the
source of truth, do not invent facts, and help me configure it for [personal/business/mixed] use.
```

For Claude Code, ask it to read `CLAUDE.md` as well.
