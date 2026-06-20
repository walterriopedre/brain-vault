# Private Local Area

## What it is

Each user may create a `_private/` folder in the vault root. This folder is:

- **Gitignored** — it is never committed or pushed to the shared repository
- **Yours alone** — no teammate can see it
- **Visible in Obsidian** — you can wikilink from `_private/` to shared vault pages (but not the reverse)

Because Git does not track ignored folders, `_private/` does not exist in the repository
itself. Each user creates it locally if they need it.

---

## What to use it for

- Personal working notes related to current work
- Draft thinking before it's ready to share
- 1-on-1 meeting preparation
- Career planning notes
- Anything that helps you think but is not appropriate for the shared repository yet

---

## What NOT to use it for

`_private/` is a local working area — not a secrets manager and not a personal-life vault.

Do not store:
- Passwords, tokens, API keys, or private keys
- Connection strings or production secrets
- Customer data or regulated data
- HR records, legal records, or medical information
- Personal-life content unrelated to work (journal, family, health, finances)

Secrets belong in your organization's approved secrets manager (e.g. a key vault, password
manager, or secrets management system). Personal-life content belongs in a personal vault
such as https://github.com/walterriopedre/brain-vault.

---

## How to create it

```bash
mkdir _private
```

Or create the folder directly in Obsidian or your file manager. Git will ignore it automatically
because `_private/` is listed in `.gitignore`.

---

## Linking rules

- You may link **from** `_private/` to shared vault pages: `[[projects/my-project/README]]`
- Avoid linking **into** `_private/` from shared files — it exposes private file names to
  anyone reading the shared repository
