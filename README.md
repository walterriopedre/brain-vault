# Knowledge Vault Starter

An AI-tool-agnostic starter repository for building a local-first knowledge system in Obsidian.

This repository contains:
- vault structure
- an installable vault operating layer under `ops/`
- note templates
- example files with fake content
- optional integration notes
- bootstrap prompts and helper scripts

It does **not** contain any private knowledge, journal history, contacts, or source material from a live vault.

## Design goals

- Keep the vault independent of any single AI vendor or tool
- Store durable knowledge in plain markdown
- Let any capable assistant operate the system through small adapter prompts
- Support manual workflows first, then optional automation
- Make sharing safe by separating framework from personal content

## What this supports

- journaling
- source ingestion and summarization
- project tracking
- meeting transcript capture and processing
- contacts and source pages
- optional task integration
- optional automation through cron jobs, local scripts, or external runtimes

## Optional tools and workflows

This starter can be used with:
- Obsidian
- Obsidian CLI, when available
- Codex
- Claude Code
- ChatGPT
- Cursor
- Gemini
- cron jobs
- local scripts
- external runtimes such as OpenClaw

It also supports workflows that can be done manually or automated with external tools, including:
- journal import from tools like Day One
- meeting transcript ingestion from tools like Krisp
- task and project sync with tools like Linear
- bookmark or web-source ingestion

## Repo layout

```text
bootstrap/
config/
docs/
examples/
integrations/
optional/
prompts/
templates/
README.md
START-HERE.md
```

## Recommended use

1. Clone this repo locally.
2. Read [START-HERE.md](./START-HERE.md).
3. Copy or generate the starter structure into a new empty Obsidian vault.
4. Install the starter into the vault.
5. Point your AI tool at `CONTEXT.md` and `ops/INDEX.md`.
6. Give your AI tool the bootstrap prompt in [prompts/new-vault-bootstrap.prompt.md](./prompts/new-vault-bootstrap.prompt.md).
7. Add optional integrations only after the core vault is working.

## Non-goals

- exporting someone else's knowledge
- depending on hidden AI memory
- forcing one assistant or runtime
- requiring automation before the vault is useful

## Canonical instructions

The installed vault is the source of truth for operating instructions.

- Vault instructions live in `ops/`
- Tool config files should remain thin adapters that point to `CONTEXT.md` and `ops/INDEX.md`
- Repo docs can explain packaging and setup, but they should not become the canonical workflow layer

## Attribution and license

- Attribution and upstream influence notes: [NOTICE.md](./NOTICE.md) and [REFERENCES.md](./REFERENCES.md)
- License: [LICENSE](./LICENSE)
