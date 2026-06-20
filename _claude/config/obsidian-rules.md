# Obsidian Wikilink Rules

## ⚠️ Wikilinks are mandatory

**Every file saved or edited in this vault must include full Obsidian wikilinks (`[[...]]`) to
all related resources before Claude finishes.** This is a hard rule — not optional.

### What must be linked

- People mentioned by name → `[[crm/people/Jane_Smith|Jane Smith]]`
- Projects referenced → `[[projects/my-project/README|My Project]]`
- Runbooks cited → `[[runbooks/my-runbook|my-runbook]]`
- Sources (emails, meetings, reports) → `[[inbox/source-file|Source]]`
- Organizations → `[[crm/organizations/Acme_Corp|Acme Corp]]`

### Before finalizing any write

Scan the file for all named entities and wrap each with `[[filename|display text]]`.
If a contact or project page doesn't exist yet, create it first, then link.
Unlinked references are dead ends in the Obsidian graph.
