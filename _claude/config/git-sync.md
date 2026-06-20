# Git Sync

The vault syncs via git. Set up the Obsidian Git plugin for automatic sync (10-min interval)
or run manually.

## Manual sync

```bash
cd /path/to/your-vault
git pull --rebase --autostash
git add -A
git commit -m "vault sync $(date '+%Y-%m-%d %H:%M') - $HOSTNAME"
git push
```

## Setup checklist

- [ ] `git init` in the vault folder
- [ ] Create a private GitHub repo and add as remote
- [ ] Install the Obsidian Git plugin (Community Plugins)
- [ ] Set auto-commit interval to 10 minutes in plugin settings
- [ ] Add `.gitignore` — never commit secrets, credentials, or large binaries

## .gitignore baseline

```
.obsidian/workspace.json
.obsidian/plugins/*/data.json
.sync.log
/tmp/
*.env
*.pem
*.key
*secret*
*token*
*password*
_private/
```

**The vault stores references to secrets — never the secrets themselves.**

---

## Conflict prevention

Most conflicts are avoidable by design. Follow these rules before reaching for conflict resolution.

**One AI session per vault at a time.** Two AI sessions writing to the same vault simultaneously will produce conflicts. If two team members need to work concurrently, coordinate — one finishes and pushes before the other starts writing.

**Pull before writing in a long session.** The Obsidian Git plugin pulls on startup, but a session open for 30+ minutes may have drifted. Before writing any file in a long session, run `git pull --rebase --autostash`.

**Personal sections in shared files.** Any file the whole team appends to (a shared work-log, a shared status file) should use named H3 sections per person:

```markdown
### Alice

- [activity]

### Bob

- [activity]
```

Each person — and their AI session — only writes to their own section. Never edit another person's section.

**Know which files conflict and which don't:**

| File type | Conflict risk | Why |
|---|---|---|
| Shared daily log | High | Everyone appends to today's file |
| Shared index files | Medium | Updated whenever a new entry is created |
| Append-only logs | Low | Prepend new entries; bottom rarely touched |
| Project READMEs | Low | Usually one owner per project |
| Individual task files | Very low | One file per task, one owner |
| CRM / contact pages | Very low | One file per person or org |
| Runbooks | Very low | One owner, infrequent simultaneous edits |

**Design your vault to minimize shared files.** The more files that have a single owner, the fewer conflicts. Prefer one-file-per-item structures (tasks, contacts, projects) over shared master lists.

---

## Resolving a conflict

When `git pull --rebase --autostash` reports a conflict:

**1. Identify the conflicted files.**
```bash
git status
# Look for lines marked "both modified"
```

**2. Open each conflicted file. Find the markers.**
```
  <<<<<<< HEAD
  [your version]
  =======
  [their version]
  >>>>>>> [commit hash]
```

**3. Merge — always keep both sides.**
- In log and append files: keep both entries, order them chronologically, remove the markers.
- In status files (READMEs, index pages): keep the most recent status, keep all notes and context from both sides.
- Never delete another team member's content when resolving a conflict.

**4. Mark resolved and continue.**
```bash
git add [conflicted-file]
git rebase --continue
git push
```

**5. Commit with context.**
```bash
git commit -m "resolve conflict in [file] — merged both changes"
```

**For Claude:** If you are about to write to a high-conflict file and the session has been open more than 20 minutes, check `git status` first. If the file was modified externally, pull and re-read before writing. When resolving conflicts, always preserve both sides — treat it as a merge, not an override.
