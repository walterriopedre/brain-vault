# SOP-005 — New Project

**Owner:** [your-assistant]
**Trigger:** [vault-owner] wants to start tracking a new project in the vault

---

## Steps

1. Create `projects/<project-name>/` with:
   - `PROJECT_CONTEXT.md`
   - `DECISIONS.md`
   - `TASKS.md`
   - `NOTES.md`
   - `ARTIFACTS/`
2. Populate `PROJECT_CONTEXT.md` from [vault-owner]'s stated intent
3. Add the project to `CONTEXT.md` under Active projects
4. Add an entry to `index.md` under Projects
5. Append to `log.md`: `## [YYYY-MM-DD] project | New project: <project-name>`

## Notes

- `PROJECT_CONTEXT.md` is high-churn.
- `DECISIONS.md` is low-churn.
- If an external task tracker is used, link it from `TASKS.md` instead of duplicating everything.
