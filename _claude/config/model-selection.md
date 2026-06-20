# Model Selection — Save Tokens Without Sacrificing Quality

## The golden rule

**Default to the lightest model that can do the job correctly.** Escalate only when the stakes
or complexity genuinely require it. A session-start scan that lists open tasks does not need the
same model as a contract review that could result in a missed legal obligation.

---

## The three tiers

### Tier 1 — Fast & cheap (Haiku)
Use for tasks where speed matters more than depth and errors are cheap to fix.

**Use Haiku for:**
- Session-start scans (listing files, checking dates, counting items)
- Scheduled task runs that read and report (deadline checks, pipeline pulses, status summaries)
- Inbox triage (classify and route — no synthesis needed)
- Filling in structured templates from known data
- Generating simple checklists or tables
- Formatting, renaming, reorganizing existing content

**Do NOT use Haiku for:**
- Anything where fabrication would be hard to catch
- Tasks requiring cross-file reasoning or synthesis
- Drafting anything that gets sent externally

### Tier 2 — Standard (Sonnet)
The default for most work. Use unless you have a specific reason to go up or down.

**Use Sonnet for:**
- Writing and editing documents, runbooks, project READMEs
- Running skills that involve drafting (briefs, proposals, ADRs, emails)
- Answering domain questions from vault context
- Code writing and script generation
- Most knowledge ingestion (inbox → knowledge page)
- Interactive sessions with the user

### Tier 3 — Full capability (Opus)
Reserve for tasks where being wrong has serious consequences or where reasoning depth
is the bottleneck.

**Use Opus for:**
- Contract review and legal document analysis
- Architecture decisions with long-lasting consequences
- Security analysis (threat modeling, access review, incident root cause)
- Multi-file synthesis where missing a connection matters
- Any task where the output will be acted on without human review
- Peer-reviewing your own prior output on a high-stakes document

---

## How to specify model in skills and scheduled tasks

In any skill or scheduled task prompt file, add a `model:` line in the frontmatter:

```yaml
---
name: deadline-check
schedule: "0 7 * * 1-5"
model: haiku        # fast scan, no synthesis needed
---
```

```yaml
---
name: contract-review
trigger: "review this contract"
model: opus         # high-stakes, must not miss obligations
---
```

If no `model:` line is present, the session's active model is used (Sonnet by default).

---

## Escalate on repeated failure

If the same step has already failed 2 or more times at the current model tier, escalate
one tier before trying again. A more capable model is cheaper than a third failed attempt.

- Failed twice on Haiku → switch to Sonnet, retry once.
- Failed twice on Sonnet → switch to Opus, retry once.
- Failed on Opus → the problem is not the model. Stop and surface the issue to the user.

Log the escalation in the work-log: `Escalated to [model] after 2 failures on [task].`
This creates a signal for tuning — if a task type keeps escalating, its default model
should be raised permanently.

---

## Decision heuristic (30-second check)

Ask these three questions before choosing a model:

1. **What happens if it's wrong?** If the answer is "nothing bad — I'd catch it immediately,"
   use Haiku or Sonnet. If the answer is "a missed deadline, a legal exposure, a production
   outage," use Opus.

2. **Does it need to reason across multiple files or perspectives?** Single-file reads and
   structured reporting → Haiku or Sonnet. Cross-file synthesis, contradiction detection,
   multi-stakeholder analysis → Sonnet or Opus.

3. **Has it already failed at this model tier?** Two failures → escalate one tier.

3. **Is this going out the door?** Anything that gets sent to an external party, published,
   or acted on without a human review pass → Sonnet minimum, Opus for high-stakes.

---

## Cost reference (approximate, relative)

| Model  | Relative cost | Best for |
|--------|--------------|---------|
| Haiku  | 1×           | Scans, reports, triage, structured reads |
| Sonnet | 5×           | Most writing, skills, interactive sessions |
| Opus   | 15×          | High-stakes analysis, complex reasoning |

A well-configured vault with scheduled tasks on Haiku and interactive sessions on Sonnet
will cost roughly 3–5× less than running everything on the most capable model — with
no meaningful quality loss on the tasks where it doesn't matter.
