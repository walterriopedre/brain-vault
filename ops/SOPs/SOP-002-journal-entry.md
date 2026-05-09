# SOP-002 — New Journal Entry

**Owner:** [your-assistant]
**Trigger:** [vault-owner] shares content to be journaled, a daily entry is needed, or content arrives from an external journaling tool

---

## Steps

1. Create `journal/YYYY/MM/YYYY-MM-DD HH-MM.md` with full frontmatter
2. Identify all people mentioned and add them to `people:` as `[[contacts/Full Name]]`
3. Update each mentioned person's `## Journal mentions` section with a link to this entry
4. Apply consistent, existing tags
5. If content touches an active project, add a wikilink to `projects/<name>/`
6. Append to `log.md`: `## [YYYY-MM-DD] journal | <brief description>`

## Outputs

- `journal/YYYY/MM/YYYY-MM-DD HH-MM.md`
- Updated contact pages
- `log.md` entry appended
