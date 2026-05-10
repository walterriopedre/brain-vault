# SOP-008 — Claim a Task (Start Work)

**Owner:** [your-assistant]
**Trigger:** [vault-owner] or assistant begins active work on an open task

---

## Steps

1. Move `tasks/open/tsk-YYYY-MM-DD-NNN.md` → `tasks/in-progress/`
2. Update frontmatter:
   - Set `status: in-progress`
   - Update `updated:` to today's date
3. Rebuild `tasks/INDEX.md`:
   - Move the entry from **Open** to **In Progress**
   - Update counts

## Outputs

- Task file moved to `tasks/in-progress/`
- `tasks/INDEX.md` updated
