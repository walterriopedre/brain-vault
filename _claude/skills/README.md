# Skills

A skill is a reusable workflow Claude can execute on demand. Each skill lives in its own
folder as a `SKILL.md` file. Claude reads the file when the trigger phrase is used and
follows the workflow step by step.

---

## Included skills (domain-agnostic)

These three skills ship with the template and work for any team type.

| Skill | Trigger | Model | What it does |
|-------|---------|-------|-------------|
| [Grill Me](grill-me/SKILL.md) | "Grill me", "poke holes in my plan" | Sonnet | Systematic planning interview — walks every branch of a plan in dependency order |
| [STORM](storm/SKILL.md) | "STORM this", "research briefing on" | Sonnet | Multi-perspective research — five expert lenses, contradiction map, synthesis, peer review |
| [Extract Wisdom](extract-wisdom/SKILL.md) | "Extract wisdom from this", "distill this" | Sonnet | Content distillation — summary, ideas, themes, quotes, facts, recommendations |
| [Skill Creator](skill-creator/SKILL.md) | "Create a skill", "automate this workflow" | Sonnet | Guided skill builder — designs, drafts, and writes a new SKILL.md from a workflow description |

---

## Skill file format

```yaml
---
name: skill-name
description: >-
  One paragraph. What the skill does, when to use it, what triggers it.
  This description is what Claude reads to decide if the skill applies.
model: haiku | sonnet | opus
compatibility: Any dependencies or requirements.
---

# Skill Name

[Instructions written for Claude in imperative voice.]

## Trigger phrases
[List the exact phrases that should activate this skill.]

## Workflow
[Step-by-step instructions Claude follows.]
[Number each step. Be explicit — Claude executes this, not a human.]

## Output rules
[What Claude produces, in what format, saved where.]
```

---

## Model guidance for skills

| Model | Use for |
|-------|---------|
| `haiku` | Read-and-report skills: triage, listing, counting, structured extraction from known files |
| `sonnet` | Most skills: drafting, creating, running workflows, answering questions |
| `opus` | High-stakes skills: contract review, security analysis, architecture decisions, anything where a mistake is hard to catch |

If a skill keeps failing at its declared model, escalate one tier. Log the escalation in
the work-log. If a skill type consistently needs escalation, update its `model:` field.

---

## Adding a new skill

1. Create a folder: `_claude/skills/<skill-name>/`
2. Create `_claude/skills/<skill-name>/SKILL.md` using the format above
3. Test it: open a Claude session and say the trigger phrase
4. If it works: add it to the table in this README
5. If it needs scripts or reference files: add them to the skill folder alongside `SKILL.md`

The skill name should be a lowercase-hyphen slug matching the folder name.
The trigger phrase should be natural language the team would actually say.

---

## Skills vs. scheduled tasks

| | Skills | Scheduled tasks |
|---|---|---|
| **Triggered by** | A human saying a phrase | A cron schedule, automatically |
| **Runs with** | A human in the loop | No human present |
| **Lives in** | `_claude/skills/<name>/SKILL.md` | `_claude/scheduled-tasks/<name>.md` |
| **Model default** | Sonnet | Haiku (read-and-report) |
| **Best for** | On-demand workflows, interactive tasks | Recurring monitoring, daily reports |

A good skill becomes a good candidate for a scheduled task once the workflow is proven
and the team trusts the output enough to receive it without asking.
