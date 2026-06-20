# Privacy And Security

Brain Vault is a file-based knowledge system. That makes it portable and easy to inspect, but it
also means you must be deliberate about what you store.

---

## Core Rule

Never commit secrets.

Do not store:

- Passwords.
- API keys.
- Tokens.
- Private keys.
- Certificates.
- Recovery codes.
- Connection strings.
- Seed phrases.

Store references to approved secure systems, not secret values.

---

## Public Repository Boundary

This public repository should contain only:

- Documentation.
- Templates.
- Fake examples.
- Public-safe AI instructions.

Do not add real personal, business, customer, employee, legal, medical, financial, regulated, or
confidential information.

---

## Private Vault Boundary

In a private vault, only store information that belongs in that vault and is safe for the intended
audience.

Personal vaults should not casually store employer or customer data. Business vaults should not
contain personal-life journals, health notes, household finances, or private family information.

---

## Systems Of Record

Brain Vault does not replace official systems.

Use official systems for:

- Tickets and work approvals.
- Customer records.
- HR records.
- Contracts and legal records.
- Accounting and finance records.
- Compliance evidence.
- Production logs and audit trails.

Link to official systems when useful. Avoid copying sensitive source data into the vault.

---

## Local Private Notes

`_private/` is ignored by Git. It is useful for local scratch notes, drafts, and temporary
thinking.

It is not a secure vault. Do not put secrets or regulated data there.

---

## If A Secret Is Committed

Deleting the file is not enough because Git keeps history.

1. Rotate the secret immediately.
2. Check where it was pushed.
3. Follow the relevant incident process.
4. Scrub history only after rotation and with appropriate coordination.

---

## AI Safety

AI assistants can read the files they are given access to. Do not put anything in the vault that
should not be visible to the assistant, the repository host, or the intended readers.

For consequential actions, AI may draft or propose. A human approves.
