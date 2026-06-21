# Obsidian Wikilink Rules

## ⚠️ Wikilinks are mandatory

**Every file saved or edited in this vault must include full Obsidian wikilinks (`[[...]]`) to
all related resources before Claude finishes.** This is a hard rule — not optional.

### What must be linked

The examples below are placeholder patterns. Replace every `<...>` segment with a real file path
before saving a note.

- People mentioned by name → `[[business/people/<person-file>|<Person Name>]]`
- Projects referenced → `[[business/projects/<project-slug>/README|<Project Name>]]`
- Runbooks cited → `[[business/runbooks/<runbook-file>|<Runbook Name>]]`
- Captured source files → `[[RAW/<source-file>|<Source Name>]]`
- Operational source notes such as requests, meetings, and reports → `[[business/inbox/<source-file>|<Source Name>]]`
- Organizations → `[[business/organizations/<organization-file>|<Organization Name>]]`

### Before finalizing any write

Scan the file for all named entities and wrap each with an Obsidian wikilink in the form
`[[<path>|<display text>]]`.
If a contact or project page doesn't exist yet, create it first, then link.
Unlinked references are dead ends in the Obsidian graph.
