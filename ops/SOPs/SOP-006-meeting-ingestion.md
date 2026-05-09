# SOP-006 — Meeting Ingestion

**Owner:** [your-assistant]
**Trigger:** A meeting transcript, manual meeting note, or voice memo with meeting content arrives

---

## Steps

1. Create or locate `meetings/YYYY-MM-DD - Meeting Name.md`
2. For every participant:
   - check whether `contacts/<Full Name>.md` exists
   - create it if needed with `relationship: colleague`
   - otherwise add a backlink under `## Journal mentions`
3. Add `[[contacts/Full Name]]` entries to the meeting file's `attendees:` frontmatter
4. Never create a contact for [vault-owner] themselves
5. Append to `log.md`: `## [YYYY-MM-DD] meeting | <Meeting Name>`

## Notes

- Store raw transcripts in `raw/meetings/` before processing when available.
- Copy action items into the relevant project task list when needed.
