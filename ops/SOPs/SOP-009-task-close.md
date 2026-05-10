# SOP-009 — Close a Task

**Owner:** [your-assistant]
**Trigger:** Work on a task is complete or cancelled

---

## Steps

1. Move `tasks/in-progress/tsk-YYYY-MM-DD-NNN.md` → `tasks/done/`
   - For cancelled tasks, move to `tasks/done/` and set `status: cancelled`
2. Update frontmatter:
   - Set `status: done` (or `cancelled`)
   - Update `updated:` to today's date
3. Fill in `## Outcome` section: what actually happened, what was learned
4. If any durable patterns were discovered, append an entry to `wiki/concepts/ai-journal.md`:
   - Format: `## YYYY-MM-DD — <topic>` with **Patterns learned:** and **Anti-patterns:** subsections
5. Rebuild `tasks/INDEX.md`:
   - Remove entry from **In Progress**, add to **Done (recent)**
   - Update counts
6. Append to `log.md`: `## [YYYY-MM-DD] task | closed tsk-YYYY-MM-DD-NNN — <title>`

## Outputs

- Task file moved to `tasks/done/`
- `tasks/INDEX.md` updated
- `wiki/concepts/ai-journal.md` updated (if patterns found)
- `log.md` entry appended
