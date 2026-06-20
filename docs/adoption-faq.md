# Adoption FAQ

Common questions teams ask when they first encounter this repository.

---

## What is this repository?

A local-first, Git-backed Markdown knowledge workspace for AI-assisted work. It helps teams
preserve and reuse operational knowledge across projects, tasks, work logs, runbooks, systems,
decisions, meetings, risks, and lessons learned.

The repository provides persistent context that Claude Code and other AI tools can read before
helping with work. The repository is the durable asset. The AI tool is the interface.

---

## Is this replacing our ticketing system, document management, source control, or other systems of record?

No. This is not a replacement for official systems of record.

It is a context and knowledge layer. Use official systems for tickets, formal change management,
source code, document approval, legal records, HR records, customer records, audit logging,
compliance evidence, and production operations.

Use this repository to capture the working context that usually gets lost across meetings, chats,
AI sessions, troubleshooting, and individual memory.

---

## Why not just use our existing document management system?

Document management systems are useful for document storage, collaboration, and official content
sharing. This repository solves a different problem.

It gives AI tools structured, persistent, local-readable context before they help with work. It
is optimized for Markdown, Git history, AI-assisted workflows, reusable operational knowledge,
runbooks, work logs, decisions, lessons learned, and repeatable patterns.

The two can coexist. This repository can link to your document management system when that system
is the official source of record.

---

## Why not just use our existing AI assistant?

Existing AI tools are valuable. This repository is not positioned as a replacement for any
specific AI tool.

This is a portable knowledge substrate that can support Claude Code, Copilot, ChatGPT, or future
AI tools. The better question is: what durable knowledge layer should our AI tools use, regardless
of which AI interface changes over time?

---

## Does this create vendor lock-in?

No, if the repository is designed correctly. Knowledge is stored in plain Markdown files. History
is stored in Git. The repository can be read by humans, any AI tool, scripts, editors, or future
systems.

The AI tool is an interface. The repository is the asset.

---

## What if we stop using Claude Code?

The repository still exists. All notes, runbooks, decisions, work logs, and knowledge pages remain
readable as plain text. The team can continue using the repository manually, with another AI tool,
or as a source for future documentation systems.

---

## Is the `_private/` folder really private?

The `_private/` folder is local-only and ignored by Git. It should not sync to the shared
repository.

However, `_private/` is not a secure vault and not a secrets manager. It is useful for local
work-related scratch notes, draft thinking, and temporary notes. See `docs/private-local-area.md`
for the full rules.

---

## Can I use this for my personal life?

Not in the work repository. The same general framework can be used for personal life, but that
should happen in a separate personal repository. The work repository is for work only.

For personal use: https://github.com/walterriopedre/brain-vault

Work vaults and personal vaults must remain separate.

---

## Can management use this for micromanagement?

The shared part of the repository makes work more visible. That visibility should be used to
improve continuity, reduce knowledge loss, support onboarding, and make work easier to understand.

The system should not be positioned as a surveillance tool. Teams should clearly define what
belongs in the shared repository, what belongs in `_private/`, what belongs in official systems,
and what does not belong in the vault at all.

---

## What if people blindly follow AI-generated recommendations?

That is a real risk. The repository should make the human approval rule explicit:

**AI output is assistance, not authority.** Humans remain responsible for reviewing commands,
understanding impact, validating assumptions, confirming target environments, checking permissions,
following change management, confirming rollback paths, and following company policies.

Claude Code may propose. The human decides.

---

## What if incorrect information gets added?

That can happen, just like it can happen in documentation, tickets, chats, or wikis.

Mitigations: use Git history, review important pages, mark uncertain information clearly, add
owners to important documents, prefer links to official systems, use "last reviewed" dates,
create a stale-content review cadence, and capture corrections in the same place the mistake
was found.

---

## What if two people edit the same file?

Git conflicts are possible. Use simple hygiene: pull before starting work, commit small changes,
avoid long-running uncommitted edits to shared files, and use separate files for separate tasks.

---

## Does Git history replace official audit logging?

No. Git history shows what changed, when, and who changed it in the repository. It does not
replace SIEM, change management, ticketing, compliance evidence systems, production audit logs,
or enterprise records management.

---

## Can we store secrets if the repository is private?

No. A private repository is not a secrets manager. See `docs/security-model.md` for the full
rules. Use approved secret-management systems for credentials.

---

## Who owns the repository?

For a team repository, a designated owner or small owner group should maintain structure and
standards. Ownership and security boundaries should follow your organization's policy.

---

## How do we start without overcomplicating it?

Start with real work, not abstract taxonomy. Recommended minimum viable workflow:

1. Use `projects/`
2. Use `tasks/`
3. Use `work-logs/`
4. Use `runbooks/`
5. Use `knowledge/decisions/`
6. Use `gotchas.md`

Let structure evolve from actual work.

---

## Adoption principles

- **Start with real work.** Pick a real recurring workflow, not an abstract taxonomy.
- **Keep the first use case small.** Repetitive, low-risk, easy to validate.
- **Separate knowledge from systems of record.** Link to official systems instead of copying.
- **Use AI to reduce repetition, not replace judgment.** Drafting, summarizing, organizing — yes.
  Final legal decisions, claim approvals, or bypassing compliance — no.
