# Local Private Notes

`_private/` is a local-only folder for scratch notes.

It is listed in `.gitignore`, so Git should not commit or push it.

---

## Good Uses

- Draft thinking.
- Notes that are not ready to share.
- Temporary planning.
- Personal reminders in a private clone.
- Business scratch notes that should not go into the shared vault yet.

---

## Bad Uses

Do not use `_private/` for:

- Passwords or tokens.
- API keys or private keys.
- Customer data.
- Employee records.
- Medical, legal, financial, or regulated records.
- Anything that requires encryption, retention policy, or formal access control.

---

## How To Create It

```bash
mkdir _private
```

You can also create it in Obsidian or your file manager.

---

## Linking Guidance

It is fine to link from `_private/` to public or shared vault notes.

Avoid linking from shared files into `_private/`, because that exposes private filenames and
creates broken links for other users.
