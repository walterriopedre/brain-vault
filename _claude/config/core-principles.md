# Core Principles

## What this repo is

A git-backed knowledge vault managed by an AI agent — the team's primary operational tool
for knowledge capture, project tracking, and day-to-day work. Not a software project.
No build system, test suite, or package manager.

**Configure these fields after cloning:**
- Owner: [Your name and email]
- Team: [Team name]
- Organization: [Organization name]

---

## ⚠️ Where to save Claude state

**Save everything inside this vault — never in the Claude app folder.**

The Claude app folder is ephemeral and can be wiped. The vault is the single source of truth.

- Memory: `_claude/memory/`
- Memory index: `_claude/MEMORY.md`
- Scheduled task prompts: `_claude/scheduled-tasks/`

---

## ⚠️ Vault first — check internal knowledge before going outside

**Before searching the web, calling an external tool, or reasoning from training data,
check the vault.** The vault contains team-specific, context-specific knowledge. Generic
sources do not.

Check in this order:
1. `knowledge/index.md` — read it first on any knowledge query. Drill into the relevant page.
2. `runbooks/` — if the task is operational, a procedure may already exist.
3. `gotchas.md` — if the task touches a domain the team has worked in, check for prior failures.
4. Recent `work-logs/` — if this topic was active in the last two weeks, check if it was resolved.

External research fills genuine gaps. It does not replace what the team already knows.

---

## ⚠️ Prefer the cheapest tool that gets the job done

**Use the least expensive tool that produces a correct result.** This applies to both how
you accomplish tasks and which model you use.

**For technical teams (engineering, infrastructure, DevOps):**
- CLI and shell commands before MCP server calls — shell doesn't consume model tokens.
- File reads and structured queries before model reasoning.
- Azure, GCP, AWS → use the native CLI. Never use a cloud MCP server when a CLI command works.

**For non-technical teams (legal, sales, marketing, operations):**
- Read vault files directly before asking the model to recall or summarize them.
- Batch related reads into one pass rather than file-by-file calls.
- Avoid re-reading files already in context during the same session.

**Model selection — the universal rule:**
- Start with the lightest model sufficient for the task.
- Escalate when: the task is genuinely complex (multi-document reasoning, high-stakes output),
  OR the same step has already failed 2 or more times — a more capable model is cheaper than
  a third failed attempt.
- Never use the most capable model by default. See `_claude/config/model-selection.md`.

---

## ⚠️ AI-tool independence is non-negotiable

Every piece of configuration and instruction must be written into this vault. Nothing goes
into the AI app's settings, a cloud account, or any path outside this folder. The vault
must be fully portable — operable with any AI tool or none at all.

If you hand this folder to someone new, or switch to a different AI model, the system
must work exactly the same way with no additional setup.
