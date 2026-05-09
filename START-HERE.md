# Start Here

This repository is a framework for creating a fresh knowledge vault, not a vault export.

## First principles

- Your vault is your durable knowledge base.
- AI tools are interchangeable operators, not the system itself.
- Keep private content out of the framework repo.
- Start simple: structure and templates first, automations later.

## Fast start

1. Create an empty Obsidian vault.
2. Copy this starter repo somewhere local.
3. Run `bootstrap/install.sh /path/to/your/vault`.
4. Open the installed vault and read `ops/INDEX.md`.
5. Point your assistant to `CONTEXT.md` and `ops/INDEX.md`.
6. Give your assistant the prompt in `prompts/new-vault-bootstrap.prompt.md`.
7. Customize the templates, tags, and workflows for your own life and projects.

## What to customize first

- assistant identity or operating style
- project naming conventions
- tags
- journal workflow
- source ingestion workflow
- task workflow
- optional integrations

## What not to customize too early

- deep automation
- vector databases
- complicated agent orchestration
- heavy refactors before you have real usage patterns

## Verification checklist

- Obsidian opens the new vault cleanly
- the core folders exist
- the `ops/` folder exists inside the vault
- `ops/INDEX.md` links to the installed SOPs and Guidelines
- you can create a journal entry from the template
- you can create a project from the template
- your assistant can read `ops/INDEX.md` and follow the operating docs
- your assistant can save a note in the right place without inventing a new structure

## License and attribution

- Review `LICENSE` before sharing the repo publicly
- Keep upstream inspirations documented in `NOTICE.md` and `REFERENCES.md`
