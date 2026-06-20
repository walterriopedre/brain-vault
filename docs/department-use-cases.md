# Department Use Cases

Examples of how different departments can use Team Brain. Adapt these to your team's actual
processes, policies, and systems of record.

---

## How to identify a good first use case

A good first use case has most of these characteristics:

- Repeated often
- Currently depends on memory or scattered notes
- Low to medium sensitivity
- Easy to validate
- Produces a reusable output
- Helps more than one person
- Does not require AI to make final decisions

**Strong first use cases:** runbook creation, meeting-to-action-summary, monthly status report,
known issue library, department FAQ, intake checklist, exception summary, evidence checklist,
finding triage summary, variance explanation draft.

**Poor first use cases:** final legal interpretation, final claim approval, direct production
changes without review, handling regulated data without governance, replacing official systems.

---

## Finance

### Monthly Close Knowledge Pack

Capture month-end close checklists, known recurring adjustments, prior close issues, review
notes, and follow-up tasks. Link to official financial reports — do not copy source data.

Example prompt:
```
Review the monthly close notes, prior issues, and current task list. Prepare a close readiness
summary with open items, risks, dependencies, and questions for the Finance team.
```

Boundaries: AI drafts summaries. Humans validate numbers. Official reporting stays in approved
systems.

### Budget Variance Explanation Drafts

Maintain prior variance explanation patterns, department commentary templates, known seasonal
patterns, approved terminology, and prior leadership questions.

Example prompt:
```
Using the prior variance explanation templates and this month's notes, draft a plain-language
explanation of the major budget variances. Flag anything that requires human validation.
```

Boundaries: AI drafts. Humans validate the financial data.

---

## Legal

### Contract Review Intake Summary

Standardize intake: contract type, business owner, counterparty, due date, key clauses, known
fallback positions, prior similar agreements, open questions.

Example prompt:
```
Create a contract review intake summary from these notes. Identify missing information, likely
legal review areas, business questions, and similar prior matters referenced in the vault.
```

Boundaries: AI organizes. Attorneys provide legal interpretation. Do not store privileged legal
advice casually.

### Regulatory Change Triage

Maintain regulatory topic pages, prior interpretations, impacted business areas, internal
stakeholders, implementation tasks, and prior regulatory response plans.

Example prompt:
```
Using the regulatory change triage template, summarize the potential impact of this update.
Identify affected departments, open questions, implementation tasks, and items requiring
attorney review.
```

Boundaries: AI summarizes. Attorneys interpret. Official legal systems remain source of record.

---

## Insurance Operations

### Claims Process Exception Knowledge Base

Capture common exceptions, escalation paths, process variations by state or product, prior issue
resolutions, operational decision logs, and known bottlenecks.

Example prompt:
```
Review the claims operations notes and summarize recurring process exceptions. Group them by
root cause, affected workflow, and recommended follow-up.
```

Boundaries: Do not store customer claim files. Human operators make final claim decisions.

### Operational Runbook Standardization

Convert repeated processes into runbooks: daily operational checks, weekly exception review,
escalation steps, system handoffs, known failure modes, "what to do when X happens" guides.

Example prompt:
```
Convert these notes into a standard operations runbook with prerequisites, steps, validation,
escalation path, rollback or correction process, and known gotchas.
```

---

## Sales

### Broker or Partner Context Briefs

Organize relationship notes, prior meeting summaries, open questions, product interest, follow-up
commitments, common objections, and internal owner history.

Example prompt:
```
Prepare a meeting brief for this broker or partner using prior notes, open follow-ups, known
concerns, and recent discussion history.
```

Boundaries: Use official CRM as the source of record. Team Brain may summarize but should not
replace CRM.

### Sales Objection and Response Library

Capture common objections, approved responses, product positioning, competitive questions,
escalation criteria, and lessons learned from prior conversations.

Boundaries: Approved messaging requires review by appropriate owners. Do not invent product
commitments.

---

## Marketing

### Campaign Launch Knowledge Pack

Maintain campaign brief, target audience, key messages, asset checklist, approval path, launch
timeline, prior campaign lessons, and post-launch review.

Example prompt:
```
Create a campaign launch checklist from the campaign brief, prior lessons learned, approval
requirements, and open tasks.
```

Boundaries: AI-generated content must be reviewed before publication. Regulated statements
require Legal/Compliance review.

### Content Repurposing Workflow

Store brand voice guidance, approved terms, messaging pillars, prior campaign copy, and
compliance-sensitive phrases.

Example prompt:
```
Using the approved messaging notes, draft three versions of this content: internal announcement,
partner-facing email, and short social-style summary. Flag any wording that may require
compliance review.
```

---

## Security

### Security Finding Triage

Maintain system ownership, approved remediation patterns, prior exceptions, environment context,
risk acceptance notes, remediation runbooks, and follow-up task history.

Example prompt:
```
Review this security finding against the system notes, known exceptions, and remediation
runbooks. Prepare a triage summary with owner, likely impact, recommended next steps, and
required approvals.
```

Boundaries: Do not store secrets or sensitive vulnerability details beyond approved handling.
Human review required before remediation.

### Incident Lessons Learned

Capture incident timeline, root cause notes, what worked, what failed, follow-up actions, control
gaps, runbook updates, and training opportunities.

Example prompt:
```
Convert these incident notes into a lessons-learned document, including timeline, contributing
factors, control gaps, follow-up tasks, and runbook updates.
```

---

## Compliance

### Control Evidence Preparation Checklist

Maintain control descriptions, evidence owner list, evidence collection steps, prior audit
questions, known gaps, and links to approved evidence repositories.

Example prompt:
```
Prepare an evidence collection checklist for this control using prior audit notes, owner
mappings, and known evidence locations.
```

Boundaries: Official evidence stays in approved systems. Compliance owners validate final evidence.

### Policy Exception Tracking Support

Organize exception summaries, business justification, owner, expiration date, compensating
controls, review cadence, and follow-up tasks.

Example prompt:
```
Summarize the open policy exceptions from the notes and create a follow-up tracker with owners,
expiration dates, compensating controls, and review questions.
```

Boundaries: Official exception approval remains in the approved governance system. AI does not
approve exceptions.

---

## IT / Infrastructure / Cloud Engineering

### Architecture Decision Capture

Capture decision context, options considered, tradeoffs, approved pattern, risks, follow-up
tasks, related systems, and links to diagrams or official docs.

Example prompt:
```
Convert these notes into an architecture decision record. Include context, decision, options
considered, tradeoffs, risks, follow-up tasks, and related systems.
```

### Infrastructure Remediation Runbook

Maintain approved remediation patterns, environment-specific notes, rollback procedures,
validation queries, known gotchas, prior failures, and owner mappings.

Example prompt:
```
Using the existing environment notes and prior remediation logs, draft a remediation runbook for
this issue. Include prerequisites, blast radius, steps, validation, rollback, and approval
requirements.
```

Boundaries: Human approval required before changes. Follow change management. Do not expose
credentials or secrets.

---

## Human Resources

### Internal Process Knowledge Base

Organize process explanations, internal checklists, role-based steps, links to official HR
systems, common questions, and draft communication templates.

Boundaries: Do not store employee records. Official HRIS remains the source of record.

### Onboarding Knowledge Pack

Prepare role-specific onboarding guides, first-week checklists, key systems, key people, team
norms, required trainings, and common questions.

Boundaries: Do not include confidential employee information. Access approval remains in approved
systems.

---

## Product

### Product Decision Log

Capture product problem statement, options considered, customer/business rationale, constraints,
dependencies, decision, follow-up tasks, and open questions.

Example prompt:
```
Convert these product discussion notes into a product decision record with context, decision,
tradeoffs, dependencies, open questions, and follow-up tasks.
```

### Release Readiness Summary

Maintain release checklist, known blockers, prior release lessons, risk register, stakeholder
map, and communication templates.

Boundaries: Official release approval remains in approved systems. AI summaries must be validated
by owners. Do not invent status.

---

## Customer Support / Service Desk

### Ticket Resolution Knowledge Reuse

Capture common issue patterns, troubleshooting steps, resolution summaries, escalation rules,
known system dependencies, and gotchas.

Example prompt:
```
Using prior resolution notes and runbooks, suggest a troubleshooting path for this issue.
Include questions to ask, likely causes, and escalation criteria.
```

Boundaries: Official ticketing system remains the source of record. Do not store customer
sensitive data.

### Knowledge Article Drafting

Convert resolved ticket summaries into draft knowledge articles, internal runbooks, or user-
facing FAQs — sanitized and generalized.

Boundaries: Remove sensitive user/customer information. Publish only through approved KB process.

---

## Executive / Leadership

### Cross-Team Status Briefing

Summarize active projects, risks, blockers, decisions needed, recent accomplishments, and
upcoming milestones from current project notes and work logs.

Boundaries: Do not summarize areas the requester is not authorized to see. Validate status
with owners.

### Decision History Review

Retrieve prior decisions, rationale, alternatives considered, risks accepted, follow-up
outcomes, and related projects.

Boundaries: Sensitive topics require access control. AI summarizes history; humans decide.
