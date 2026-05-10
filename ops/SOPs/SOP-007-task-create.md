# SOP-007 — Create a Task

**Owner:** [your-assistant]
**Trigger:** [vault-owner] asks to track multi-session work, or any work with more than 3 steps

---

## When to create a task

Create a task when the work:
- Spans more than one session, or
- Has more than 3 discrete steps, or
- Depends on external inputs that are not yet available

Do not create tasks for one-shot requests the user completes in the current session.

---

## Steps

1. Copy `templates/task.md` → `tasks/open/tsk-YYYY-MM-DD-NNN.md`
   - Increment NNN starting at 001 per day
2. Fill in `title`, `goal`, `priority`, and `steps`
3. Populate all cross-reference arrays:
   - `wiki_refs` — relevant wiki pages
   - `contact_refs` — people involved
   - `journal_refs` — related journal entries
   - `related_tasks` — dependent or sibling tasks
4. Rebuild `tasks/INDEX.md`:
   - Add a line under **Open** with: `tsk-ID | title | priority`
   - Increment Open count
5. Append to `log.md`: `## [YYYY-MM-DD] task | created tsk-YYYY-MM-DD-NNN — <title>`

## Outputs

- `tasks/open/tsk-YYYY-MM-DD-NNN.md` created
- `tasks/INDEX.md` updated
- `log.md` entry appended
