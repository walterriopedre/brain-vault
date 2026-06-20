---
name: skill-creator
description: >-
  Creates a new skill for this vault. Takes a workflow description from the user and generates
  a properly formatted SKILL.md file in _claude/skills/. Guides the user through defining the
  trigger phrase, the workflow steps, the output, and the right model tier. Updates the skills
  README when done. Use when the team wants to automate a recurring workflow or create a new
  trigger-based capability. Trigger on phrases like "create a skill", "new skill", "make a skill
  for", "automate this workflow", "I want to be able to trigger", or when the user describes a
  repeating task they wish Claude could do on demand.
model: sonnet
compatibility: No external dependencies — works entirely from conversation and vault files.
---

# Skill Creator

## What this skill does

This skill walks you through designing and writing a new skill from scratch. It asks about your
workflow, proposes a name and trigger phrase, recommends a model tier with reasoning, designs
the numbered workflow steps, then shows you a complete SKILL.md draft for approval before
writing anything.

On approval it writes `_claude/skills/<name>/SKILL.md` and adds a row to the skills README.
Nothing is written until you explicitly approve the draft.

---

Your job is to help the user design and create a new skill for their vault. A skill is a
reusable workflow Claude executes on demand when a trigger phrase is used. The output of
this skill is a working `SKILL.md` file and an updated skills index.

Work through the steps below in order. Show your work at each step before writing any files.

---

## Step 1 — Understand the workflow

Ask the user:

> "Describe the workflow you want to automate. What triggers it — what would you say to
> Claude to kick it off? What information does Claude need to gather? What does it produce?"

Listen for:
- The **trigger** — the natural phrase someone would say (not a command, a sentence)
- The **inputs** — what Claude needs to ask for or look up
- The **output** — a file created, a message, a task, a report
- The **frequency** — one-off on demand, or something they do repeatedly

If the workflow is better suited as a **scheduled task** (runs automatically, no human
trigger), say so: "This sounds like it runs on a schedule rather than on demand. Should
I set it up as a scheduled task instead, or as a skill you trigger manually?"

---

## Step 2 — Name and trigger phrase

Propose:
- A **skill name** — lowercase-hyphen slug, describes the action (e.g., `invoice-intake`,
  `call-prep`, `contract-review`, `onboarding-checklist`)
- A **primary trigger phrase** — what the user says to start it
- 2–3 **alternate triggers** — natural variations someone might actually use

Confirm with the user before continuing.

---

## Step 3 — Choose the model

Apply this logic and explain the choice:

- **Haiku** — if the skill only reads existing files and produces a structured report or list.
  No synthesis, no drafting, no judgment required.
- **Sonnet** — if the skill drafts content, creates new files, answers questions, or runs
  a multi-step workflow with some judgment involved. This is the default for most skills.
- **Opus** — if the skill involves high-stakes analysis where a mistake is hard to catch:
  contract review, security analysis, architectural decisions, compliance assessment.

State your recommendation and the reason. Ask if the user wants to override it.

---

## Step 4 — Design the workflow steps

Write out the complete workflow in numbered steps. Each step must be:
- **Specific** — Claude will execute this, not a human. Vague steps produce vague results.
- **Ordered** — steps run top to bottom. If a step depends on a previous one, say so.
- **File-aware** — name the exact folder and file naming convention for any file created.

Structure:
```
1. Ask: [list exactly what to ask the user, if anything]
2. Read: [which vault files to read for context]
3. [action — create / update / extract / draft / confirm]
4. Save to: [exact path and naming pattern]
5. Confirm: "[what Claude says when done]"
```

Show the full workflow to the user and get approval before writing.

---

## Step 5 — Draft the SKILL.md

Assemble the approved content into the standard format:

```yaml
---
name: [skill-name]
description: >-
  [2-3 sentences: what it does, when to use it, what triggers it.
  Written so Claude can decide if this skill applies to a given request.]
model: haiku | sonnet | opus
compatibility: [any dependencies — Python packages, connectors, tools]
---

# [Skill Name]

## What this skill does

[Plain-English explanation for a human reading the file cold: what it produces,
what modes it supports, what files it reads or writes. 2–4 sentences.]

---

## Trigger phrases

- "[Primary trigger]"
- "[Alternate trigger 1]"
- "[Alternate trigger 2]"

---

## Workflow

[Numbered steps as designed in Step 4]

---

## Output

[What Claude produces, in what format, saved where, and what it confirms to the user]

---

## Notes

[Edge cases, things to watch for, limitations, what this skill does NOT do]
```

Show the complete draft to the user. Do not write any files until the user approves.

---

## Step 6 — Write and register

On approval:

1. Create the folder: `_claude/skills/[skill-name]/`
2. Write the approved content to `_claude/skills/[skill-name]/SKILL.md`
3. Read `_claude/skills/README.md`
4. Add the new skill to the included skills table:
   `| Skill Name | trigger | model | one-line description |`
   Use a real relative link to `<skill-name>/SKILL.md` after the folder exists.
5. Write the updated README back

Confirm:

> "Skill **[name]** created. Trigger it by saying: *'[primary trigger]'*
> File: `_claude/skills/[skill-name]/SKILL.md`"

---

## What makes a good skill

Share these principles with the user if they seem useful:

- **One trigger, one workflow.** A skill that does five different things depending on context
  is hard to maintain. If the user describes multiple distinct workflows, suggest separate skills.
- **Ask only what you can't look up.** If the information is already in the vault (a project
  README, a contact's CRM page), read it instead of asking the user.
- **The confirm message matters.** End every skill with a specific confirmation: what was
  created, what the next step is, who needs to act. Vague confirmations train users to
  double-check, which defeats the purpose.
- **Design for failure.** What should Claude do if the file it needs doesn't exist yet?
  If the user gives an ambiguous answer? Name these cases in the Notes section.
- **Model up when stakes are high.** A skill that reviews a legal contract should be Opus
  even if it feels similar to a skill that summarizes a meeting note (Sonnet). The cost
  difference is smaller than the cost of missing something.
