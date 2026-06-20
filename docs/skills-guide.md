# Skills Guide

## What is a skill?

A skill is a reusable instruction package that teaches Claude Code how to perform a specific
type of task consistently.

A skill can define:
- When it should be used
- What steps Claude should follow
- What files or templates to read
- What output format to produce
- What safety checks to apply
- What examples to follow

A skill is useful when a team repeats the same kind of work often enough that it deserves a
standard process.

---

## When to create a skill

Create a skill when the workflow is:

- Repeated often
- Structured and describable
- Has known inputs and outputs
- Requires consistent quality or safety rules
- Benefits from reusable templates

Do **not** create a skill for one-off tasks. Start with a Markdown template first. Convert it
into a skill only after the team sees the workflow repeating.

---

## Skill structure

A skill lives in `_claude/skills/<skill-name>/`:

```
skill-name/
├── SKILL.md          # Required — the main instruction file
├── templates/        # Optional — output templates
├── examples/         # Optional — sample inputs and outputs
└── references/       # Optional — process notes, policy docs
```

---

## SKILL.md format

```markdown
---
name: skill-name
description: One sentence — when to use this skill.
---

# Skill Name

## What this skill does

One paragraph. What problem it solves and what it produces.

## When to use

Trigger conditions — what the user says or does that should invoke this skill.

## Inputs

What the user provides.

## Process

Numbered steps Claude follows.

## Output

What Claude produces.

## Safety rules

What Claude must never do when running this skill.
```

---

## Example skill: Contract Review Intake

```markdown
---
name: contract-review-intake
description: Use this skill when preparing a structured intake summary for a contract review.
---

# Contract Review Intake

## What this skill does

Creates a structured intake summary for legal review from raw notes, emails, or requests.
Identifies missing information, likely review areas, and items requiring attorney attention.

## When to use

When the user provides notes or a request related to contract review.

## Inputs

- Contract type
- Counterparty
- Business owner
- Requested deadline
- Background context and known risks

## Process

1. Identify the business owner and contract type.
2. Summarize the business purpose.
3. Identify missing information.
4. Identify likely legal review areas.
5. Check for similar prior matters in the vault.
6. Create a question list for the business owner.
7. Flag anything requiring attorney review.

## Output

- Intake summary
- Missing information checklist
- Legal review area checklist
- Business-owner questions
- Similar prior matter references
- Items requiring attorney review

## Safety rules

- Do not provide final legal advice.
- Do not invent contract terms.
- Do not store sensitive contracts unless approved.
- Link to the official contract repository when possible.
- Clearly flag assumptions.
```

---

## Department skill examples (documentation only)

The following are **not implemented skills** — they are examples to help departments understand
what a skill for their context might look like. Create actual skills only when a real recurring
workflow justifies it.

### Legal: Regulatory Change Triage

Purpose: Organize regulatory updates into reviewable impact summaries.

Trigger: "Triage this regulatory update" or "Summarize potential business impact."

Outputs: Plain-language summary, impacted departments, open legal questions, implementation
tasks, stakeholder briefing draft.

Safety rules: Do not make final legal determinations. Clearly separate summary from
interpretation. Link to official legal research systems.

---

### Operations: Runbook Builder

Purpose: Convert repeated manual processes into standard runbooks.

Trigger: "Turn these notes into an operations runbook" or "Create a repeatable checklist."

Outputs: Runbook, checklist, validation steps, escalation path, rollback steps, gotchas,
training summary.

Safety rules: Do not include secrets. Flag process changes requiring owner approval. Separate
current process from recommended improvements.

---

### Operations: Claims Exception Summary

Purpose: Identify recurring claims-process exceptions and convert them into reusable knowledge.

Trigger: "Summarize these claims exception notes."

Outputs: Exception summary, root cause grouping, affected workflow, escalation path, process
improvement backlog, training notes.

Safety rules: Do not store customer claim files. Do not include regulated customer data. Do
not make final claim decisions.

---

### Finance: Monthly Close Readiness

Purpose: Prepare a monthly close readiness summary.

Outputs: Close checklist, open items, owner list, risks, questions, leadership summary draft.

Safety rules: Do not approve financial results. Do not modify source data. Humans validate
all numbers.

---

### Security: Security Finding Triage

Purpose: Prepare a structured triage summary for security findings.

Outputs: Finding summary, affected system, owner, risk notes, known exceptions, recommended
next steps, approval requirements, follow-up tasks.

Safety rules: Do not expose secrets. Do not perform remediation without approval. Follow
incident and vulnerability handling policies.

---

### Compliance: Control Evidence Checklist

Purpose: Prepare evidence collection checklists for recurring controls.

Outputs: Evidence checklist, evidence owner list, missing item list, timeline, review questions.

Safety rules: Do not store regulated evidence unless approved. Link to official evidence
repository. Compliance validates final evidence.

---

## External skill repositories

Teams do not need to create every skill from scratch. Public skill repositories and community
lists exist. Before installing or adapting any external skill:

1. Review the skill contents fully.
2. Confirm it does not require unsafe tools or permissions.
3. Confirm it does not encourage storing secrets or sensitive data.
4. Adapt it to your organization's policies.
5. Test it in a low-risk environment.
6. Remove unnecessary scripts or external dependencies.
7. Keep only what the team understands.

Treat external skills like third-party code. Do not install them blindly.

Before creating skills at all, check the official Claude Code skills documentation and public
skill registries for existing implementations.

---

## Recommended skill lifecycle

| Stage | What happens |
|-------|-------------|
| 1. Manual prompt | Repeat a prompt a few times. See if output is consistently useful. |
| 2. Template | Create `_templates/<workflow>.md` — reusable Markdown template. |
| 3. Skill | Create `_claude/skills/<name>/SKILL.md` only after the template proves value. |
| 4. Team review | Use the skill review checklist (`docs/skill-review-checklist.md`). |
| 5. Controlled use | Use on low-risk examples first. |
| 6. Improvement | Refine based on real use. First version is never final. |

---

## Recommended first adoption package

When introducing Team Brain to a new team, start with only:

1. `README.md`
2. `docs/how-this-repository-works.md`
3. `docs/adoption-faq.md`
4. `docs/department-use-cases.md`
5. `docs/skills-guide.md`
6. `docs/private-local-area.md`
7. `QUICKSTART.md`

Add department-specific skills only when a department expresses a real need.

---

## Recommended message to departments

> Team Brain is a lightweight way for each team to preserve working knowledge and give AI tools
> useful context. Each department can customize it to its own needs while keeping shared safety
> rules: no secrets, no regulated data unless approved, human review for consequential decisions,
> and clear separation between work and personal vaults.
>
> Start small. Use it for real work. Capture what helps. Ignore what does not. Let the repository
> evolve from actual practice.

For personal use of this framework outside work:
https://github.com/walterriopedre/brain-vault
