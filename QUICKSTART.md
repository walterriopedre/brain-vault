# Quickstart

Five steps to a working Brain Vault.

---

## 1. Clone or Copy the Repository

```bash
git clone <repository-url>
cd <repository-folder>
```

If you are creating a real vault with private information, use a private repository or a local
folder that you do not publish.

---

## 2. Choose Your Vault Mode

Pick the mode that matches your use case:

- **Personal:** personal projects, learning, routines, creative work, household admin.
- **Business:** team work, client-safe context, procedures, decisions, project notes.
- **Shared:** reusable knowledge and templates that fit either mode.

Read the matching guide:

- `docs/personal-vault-guide.md`
- `docs/business-vault-guide.md`
- `docs/how-this-works.md`

---

## 3. Open the Folder in Your Editor

Recommended human editors:

- Obsidian, for notes and backlinks.
- VS Code or another text editor, for direct file editing.

Open the repository folder itself as the vault. The folder is the source of truth.

---

## 4. Set Up AI Assistance

If you use Claude Code, Codex, ChatGPT, or another file-aware AI assistant, point it at this
folder and ask it to read:

- `AGENTS.md`
- `CLAUDE.md` if using Claude Code
- `docs/ai-usage-guide.md`

The AI should treat this as a public-safe Brain Vault template unless you explicitly configure
your private clone differently.

---

## 5. Create Your Local Private Area

Create `_private/` if you want local scratch notes that never get committed.

```bash
mkdir _private
```

Use `_private/` for temporary thinking and drafts. Do not use it for passwords, API keys,
regulated data, or anything that requires a real secrets manager or official system of record.

---

## What To Do First

Start small:

1. Copy a template from `templates/`.
2. Create one personal project in `personal/projects/` or one business project in `business/projects/`.
3. Add one personal task in `personal/tasks/` or one business task in `business/tasks/open/`.
4. Capture one reusable lesson in `shared/knowledge/`.
5. For business sessions, write one short log in `business/work-logs/`.

Fake examples live in `examples/`. They are safe to copy, adapt, or delete.
