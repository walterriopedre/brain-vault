# SOP-001 — Ingest New Source

**Owner:** [your-assistant]
**Trigger:** A new external source (article, paper, video, PDF, note) arrives to be processed into the vault

---

## Steps

1. Locate or confirm the source in `raw/` and treat raw files as immutable
2. Search the vault before creating anything: check `index.md`, then `wiki/topics/`, `wiki/concepts/`, `wiki/summaries/`
3. Extract key takeaways and discuss with [vault-owner] if interpretation is needed before writing
4. Create `wiki/summaries/<source-name>.md` with frontmatter and a TL;DR blockquote as the first body element
5. Update relevant `wiki/concepts/` and `wiki/topics/` pages only if the source materially changes them
6. Check `sources/<Author Name>.md` and create a source page if needed
7. Update `index.md` when new durable pages are created
8. Append to `log.md`: `## [YYYY-MM-DD] ingest | <Title>`

## Outputs

- `wiki/summaries/<source-name>.md`
- Updated `wiki/concepts/` or `wiki/topics/` pages when warranted
- `sources/<Author Name>.md` if needed
- `index.md` updated
- `log.md` entry appended
