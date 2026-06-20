# Core Principles

## What this repo is

Brain Vault is a git-backed Markdown knowledge vault. It can be used for personal knowledge,
business operating knowledge, or a separated mix of both.

This public repository is a template. It should contain documentation, templates, and fake
examples only. Real personal or business content belongs in a private clone with appropriate
access controls.

**Configure these fields in a private clone if useful:**

- Owner:
- Vault mode: personal | business | mixed
- Intended audience:

---

## Where to save AI state

Save project-specific AI state inside this vault, not in an app-specific hidden folder outside the
repository.

- Memory: `_claude/memory/`
- Memory index: `_claude/MEMORY.md`
- Scheduled task prompts: `_claude/scheduled-tasks/`

The vault should remain portable across tools.

---

## Vault first

Before searching the web, calling an external tool, or reasoning from memory, check the vault when
the topic is likely to have local context.

Check in this order:

1. `shared/knowledge/index.md` for durable knowledge.
2. `business/runbooks/` for procedures.
3. `shared/gotchas.md` for prior failures and surprises.
4. Recent `business/work-logs/` if the topic was active recently.

External research fills gaps. It does not replace local context.

---

## Use the cheapest reliable tool

Use simple file reads, search, scripts, and structured queries before expensive or broad AI calls.

Escalate model capability only when the task is complex, high-stakes, or has failed repeatedly.
See `_claude/config/model-selection.md`.

---

## AI-tool independence

Every durable instruction and configuration should live in this vault. Do not rely on one AI app's
settings as the only place a rule exists.

If someone opens the folder with a different AI tool, the operating model should still be
understandable from the files.
