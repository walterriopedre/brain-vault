# Security Model

## Core principle

**This repository must not contain secrets.** The vault stores references to secrets
(e.g. "the API key is in Key Vault under `my-secret-name`") — never the secrets themselves.

---

## What is allowed

| Category | Examples | Notes |
|----------|----------|-------|
| General team knowledge | Architecture notes, runbooks, decisions | Default — this is what the vault is for |
| Technical context | System descriptions, environment notes | Avoid production details that could aid an attacker |
| Project notes | Status, owner, links, decisions | Appropriate for all authorized team members |
| Non-sensitive meeting notes | Decisions, action items, context | Omit privileged HR/legal discussion |
| Links to official systems | "See ticket #123 in Jira" | Link, don't copy |

## What is not allowed

| Category | Examples |
|----------|----------|
| Credentials | Passwords, tokens, API keys, private keys, certificates |
| Connection strings | Database URLs, storage connection strings |
| Production secrets | Any value that grants access to a live system |
| Customer data | PII, account data, transaction records |
| Regulated data | HIPAA, PCI, SOC 2 in-scope data |
| HR / legal records | Performance reviews, contracts, legal filings |
| Personal-life content | Journal, health, family, personal finances |

---

## If a secret is accidentally committed

Deleting the file or value is **not enough** — the secret is still in git history.

1. Rotate the secret immediately in the system that issued it
2. Review git history to understand the blast radius
3. Follow your organization's incident response procedure
4. Consider using `git filter-repo` or BFG Repo Cleaner to scrub history — but only
   after the secret is rotated, and only with team awareness

---

## Recommended controls

- **Pre-commit scanning** — use a tool like `git-secrets`, `detect-secrets`, or `gitleaks`
  to catch credentials before they are committed
- **Branch protection** — require pull request review before merging to main
- **Secret scanning** — enable GitHub's built-in secret scanning if the repository is on GitHub
- **`.gitignore` hygiene** — keep the `.gitignore` current; review it when adding new tool
  integrations

---

## AI and security

The AI agent reads this repository. Everything in the vault is visible to the AI model.

This is a feature — it provides context. It is also a boundary — do not put anything in
the vault that you would not be comfortable sharing with the AI model and with all team
members who have repository access.

The AI must not be used to bypass security controls, generate credentials, or recommend
actions that violate your organization's security policy.
