# Skill Review Checklist

Before adding a skill to any vault repository, review the following.

---

## Purpose

- What problem does this skill solve?
- Is the workflow repeated often enough to justify a skill?
- Who will use it?
- Which team or department owns it?

## Scope

- What inputs does it expect?
- What outputs does it produce?
- What systems does it reference?
- Does it require scripts or external commands?

## Safety

- Could it expose secrets or credentials?
- Could it process regulated data, customer data, or PII?
- Could it produce legal, financial, compliance, or operational decisions without human review?
- Does it clearly state what it must not do?
- Does it require human approval before consequential actions?

## Governance

- Who owns the skill?
- Who approves changes to it?
- How often should it be reviewed?
- Where do examples live?
- Does it conflict with official policy?

## Testing

- Has it been tested with sample inputs?
- Does it produce useful output?
- Does it avoid overclaiming?
- Does it mark assumptions clearly?
- Does it avoid inventing facts?

---

## Recommended lifecycle before creating a skill

1. **Manual prompt** — repeat the prompt a few times to see if the output is consistently useful
2. **Template** — capture the process as a reusable Markdown template in `_templates/`
3. **Skill** — only formalize it as a `SKILL.md` once the template proves its value
4. **Team review** — use this checklist
5. **Controlled use** — start with low-risk examples
6. **Improvement** — refine based on real use
