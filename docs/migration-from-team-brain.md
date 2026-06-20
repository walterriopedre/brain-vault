# Migration From Team Brain

Earlier versions of this repository were framed as a company-only Team Brain. Brain Vault keeps
the useful operating model while supporting personal, business, and shared modes.

---

## What Changed

- Public positioning changed from team-only to personal/business/shared.
- New folders were added: `personal/`, `business/`, `shared/`, `ai/`, `templates/`, `examples/`.
- Existing root work folders were migrated under `business/`.
- Public examples must be fake.
- AI instructions now describe Brain Vault instead of a company-only work vault.

---

## What Stayed Compatible

- `AGENTS.md` remains the main AI operating contract.
- `CLAUDE.md` remains the Claude Code entry point.
- `_claude/` remains available for Claude Code config, skills, memory, and scheduled tasks.
- `_templates/` remains available for legacy Claude-oriented workflows.
- The old root work folders have direct replacements under `business/` and `shared/`.

---

## Suggested Migration Steps

1. Update public-facing docs and README language.
2. Add the new mode folders.
3. Move old business-oriented root folders under `business/`.
4. Move durable knowledge and gotchas under `shared/`.
5. Decide whether `business/people/` and `business/organizations/` should be canonical.
6. Treat `business/crm/` as optional business-specific structure or migrate it later.
7. Keep compatibility stubs when external tools depend on old paths.

---

## Path Guidance

Recommended canonical paths going forward:

- Contacts: `business/people/`
- Organizations: `business/organizations/`
- Public templates: `templates/`
- Claude-compatible templates: `_templates/`
- Fake examples: `examples/`

The existing `business/crm/` folder should not be removed blindly. Some business workflows may still prefer
that structure.

---

## What Not To Do

- Do not delete useful old content just because the structure changed.
- Do not delete legacy compatibility paths until links and tool assumptions are checked.
- Do not rewrite real private vault content with generic template language.
- Do not mix personal and business data without explicit boundaries.
