# INSTALL.md — Team Brain Setup Guide

> **For Claude:** Read this file at the start of any session where a new team or individual is
> setting up their vault for the first time. It is your instruction set for the setup ritual
> and your reference for domain-specific examples. When you reach the **Setup Ritual** section,
> execute it interactively with the user — do not skip ahead.
>
> **Model to use for this session:** Sonnet. The setup ritual involves drafting and writing
> config files — this requires judgment, not just reading. Switch to Opus only if the team's
> domain involves high-stakes document analysis (legal, compliance, security).
>
> **For humans:** This document explains what team-brain is, how the layers fit together, and
> what a working setup looks like for five different team types. Read it once to understand the
> system. Then tell Claude: "Run the setup ritual."

---

## What This System Is

Team-brain is a git-backed knowledge vault managed by an AI agent. It is not a chat interface,
a wiki, or a note-taking app. It is the team's **primary operational tool** — the place where
work is planned, executed, documented, and remembered.

The system has three properties that distinguish it from every other AI tool:

**1. Data sovereignty.** Everything lives in a git repository on your machines. It syncs to
GitHub so the whole team has access. Nothing lives in the AI vendor's cloud. If you change AI
tools tomorrow, nothing is lost — your vault, your rules, your knowledge stay exactly where
they are.

**2. AI-model independence.** The AI's instructions, rules, and domain knowledge all live inside
the vault — not in the AI app's settings. This vault works with Claude, ChatGPT, Gemini, or
any model with file access. You are not locked to any vendor.

**3. Gets smarter with use.** Every solved problem, every answered question, every completed
project adds to the vault. The more the team uses it, the more it knows about how your team
specifically works — not generic knowledge, but yours.

---

## Prerequisites & Installation

Install these tools before opening a Claude session in the vault. Each section includes
a verification command — run it to confirm the tool is ready before moving on.

---

### 1. Git

Git is the sync and audit layer. Required by everyone.

**Windows:**
Download and run the installer from [git-scm.com](https://git-scm.com/download/win).
Accept all defaults. This also installs Git Bash, which Claude Code uses on Windows.

**macOS:**
```bash
brew install git
# or: xcode-select --install
```

**Linux (Debian/Ubuntu):**
```bash
sudo apt update && sudo apt install git
```

**Verify:**
```bash
git --version
# Expected: git version 2.x.x
```

**Initial config (one-time, any OS):**
```bash
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

---

### 2. Obsidian

Obsidian is the human-facing editor for the vault. Required by everyone.

Download the installer for your OS from [obsidian.md](https://obsidian.md) and run it.
No account is required for local use.

**Open the vault:**
1. Launch Obsidian
2. Click **Open folder as vault**
3. Select the `team-brain-template` folder (or your cloned copy of it)

Obsidian will index the vault. You should see the folder structure in the left panel.

---

### 3. Obsidian Git plugin

The Git plugin syncs the vault to GitHub automatically every 10 minutes. Required by everyone.

**Install:**
1. In Obsidian: **Settings → Community plugins**
2. Turn off **Safe mode** if prompted
3. Click **Browse** and search for **Git**
4. Install **"Git" by Vinzent Stempel** and enable it

**Configure** (Settings → Community plugins → Git → Options):

| Setting | Value |
|---------|-------|
| Auto pull interval | 10 |
| Auto commit-and-sync interval | 10 |
| Commit message | `vault sync {{date}} — {{hostname}}` |
| Pull updates on startup | Enabled |
| Push on commit-and-sync | Enabled |
| Pull strategy | Rebase |

**Verify:** The Git ribbon icon (branch symbol) appears in the Obsidian left sidebar.
Click it — you should see the source control panel with your repo status.

---

### 4. GitHub account and repository

The vault needs a remote repository to sync to. Required by everyone.

1. Create an account at [github.com](https://github.com) if you don't have one
2. Create a new **private** repository (no README, no .gitignore — the vault has both)
3. Connect the vault:

```bash
cd /path/to/your-vault
git init
git add -A
git commit -m "initial vault setup"
git remote add origin https://github.com/[your-org]/[vault-name].git
git push -u origin main
```

After this, the Obsidian Git plugin will push and pull automatically.

---

### 5. Claude Code

Claude Code is the AI agent that reads the vault and does the work. Required by everyone.

**Install Node.js first** (Claude Code is distributed via npm):
- Download the LTS version from [nodejs.org](https://nodejs.org)
- Verify: `node --version` and `npm --version`

**Install Claude Code:**
```bash
npm install -g @anthropic-ai/claude-code
```

**Verify:**
```bash
claude --version
```

**Sign in:**
```bash
claude
# Follow the prompts to authenticate with your Anthropic or organization account
```

**Open a session in the vault:**
```bash
cd /path/to/your-vault
claude
```

Claude will read `CLAUDE.md` on startup and load all the config files it points to.
If this is a first-time setup, say: **"Run the setup ritual"** and Claude will walk
you through configuring the vault for your team.

---

### 6. Python (optional — for teams that run scripts)

Required if your team will run automation scripts, data processing, or reporting pipelines.
Not needed for teams whose primary work is documents, tasks, and knowledge capture.

**Windows:**
```powershell
winget install Python.Python.3
# or download from python.org
```

**macOS:**
```bash
brew install python3
```

**Linux:**
```bash
sudo apt install python3 python3-pip
```

**Verify:**
```bash
python3 --version
pip3 --version
```

---

### 7. Node.js / npm (optional — for teams that build web tools)

Node.js is already installed if you followed step 5 (Claude Code requires it).
npm is bundled with Node.js. You only need to install separately if you skipped step 5.

**Verify:**
```bash
node --version
npm --version
```

**Common use cases:**
- Building a team taskboard or internal web app
- Running JavaScript-based reporting scripts
- Using the GitHub CLI (which requires npm on some platforms)

---

### 8. GitHub CLI — `gh` (optional — recommended)

The GitHub CLI lets Claude create issues, PRs, and manage the repo from within a session.
Useful for engineering and infrastructure teams.

**Windows:**
```powershell
winget install GitHub.cli
```

**macOS:**
```bash
brew install gh
```

**Linux:**
```bash
sudo apt install gh
# or: curl -sS https://webi.sh/gh | sh
```

**Authenticate:**
```bash
gh auth login
```

**Verify:**
```bash
gh --version
```

---

### 9. PowerShell (optional — for Windows automation teams)

Pre-installed on Windows. For macOS and Linux, install PowerShell to run `.ps1` scripts
written by or for the team.

**macOS / Linux:**
```bash
brew install --cask powershell
# then: pwsh --version
```

---

### Installation checklist

Run through this before starting the setup ritual:

- [ ] `git --version` returns a version number
- [ ] Git user.name and user.email are configured
- [ ] Obsidian opens the vault folder and shows the file tree
- [ ] Obsidian Git plugin is installed and configured
- [ ] Vault is connected to a GitHub repository (`git remote -v` shows the remote)
- [ ] `claude --version` returns a version number
- [ ] `claude` opens a session in the vault directory
- [ ] Python installed if your team runs scripts: `python3 --version`
- [ ] Node.js installed: `node --version`

Once all required items are checked, open a Claude session in the vault folder and say:
**"Run the setup ritual."**

---

## How the Layers Work

A working team-brain vault has three layers. They are built in order.

```
Layer 1 — Vault Structure
  The folders, files, and templates. The place where work lives.
  Folders: projects/, work-logs/, inbox/, runbooks/, knowledge/, _templates/

Layer 2 — AI Operating Rules
  The instructions Claude reads at session start. Lives in _claude/config/.
  Files: AGENTS.md, core-principles.md, model-selection.md, obsidian-rules.md,
         vault-structure.md, knowledge-layer.md, and domain-specific config.

Layer 3 — Automation & Skills
  Scheduled tasks that run automatically + reusable skill workflows.
  Folders: _claude/scheduled-tasks/, _claude/skills/
```

Layer 1 is the same for every team. The folder names may differ slightly by domain, but the
pattern is identical.

Layer 2 is where the team's domain lives. `AGENTS.md` tells Claude what to scan at session
start, what to file at session end, and what rules to follow. This is the most important file
in the vault. Every team writes their own version.

Layer 3 is where the leverage comes from. A skill is a reusable workflow Claude triggers on
demand. A scheduled task is a prompt that runs automatically on a cron schedule.

---

## Model Selection — Saving Tokens Without Sacrificing Quality

**Read `_claude/config/model-selection.md` for the full rule.** The summary:

| Task type | Model | Why |
|-----------|-------|-----|
| Session-start scans, scheduled reports, inbox triage | Haiku | Fast reads, no synthesis needed |
| Drafting documents, running skills, answering questions | Sonnet | Default for most work |
| Contract review, architecture decisions, security analysis | Opus | High-stakes, must not miss |

**The golden rule:** default to Haiku for anything that reads and reports. Default to Sonnet
for anything that creates or decides. Escalate to Opus only when being wrong has real
consequences and a human won't catch it before it matters.

Every skill and scheduled task file can declare its own model in frontmatter:
```yaml
---
name: deadline-check
model: haiku    # this is a read-and-report task
---
```

A vault with scheduled tasks on Haiku and interactive sessions on Sonnet costs roughly
3–5× less than running everything on the most capable model — with no meaningful quality
loss on the tasks where it doesn't matter.

---

## The AGENTS.md Contract

Every team's vault has an `AGENTS.md` at the root. It is the operating contract between
the team and Claude. It has the same structure regardless of domain:

```
## 1. Identity        Who we are and what the vault is for.
## 2. Standing duties What Claude does in every session, in priority order.
## 3. Session start   The exact scan Claude runs before answering anything.
## 4. Session end     What Claude files before closing.
## 5. Vault layout    Where things live.
## 6. Hard rules      Non-negotiables and domain-specific invariants.
```

The session-start ritual is the most valuable part. It means Claude never starts from
scratch — it always knows what's open, what's late, and what needs attention before it
takes any new request.

---

## Department Playbooks

The following sections show what a working setup looks like for five team types. Each includes:
- An `AGENTS.md` excerpt (standing duties + session-start ritual + hard rules)
- Two example skills with trigger prompts and model recommendations
- Two example scheduled tasks with prompt file content and model recommendations

These are starting points. Adapt them to how your team actually works.

---

### Legal

**What the vault tracks:** Active matters, contract drafts, deadlines, counterparties,
regulatory filings, attorney assignments, outside counsel, privilege logs.

**AGENTS.md excerpt:**
```markdown
## 2. Standing duties
1. Keep the team on top of every active matter and its nearest deadline.
   Surface anything due within 7 days at session start without being asked.
2. Find what's being missed — matters with no activity in 14 days, contracts
   in review with no comment in 5 days, inbox items older than a week.
3. Alert on potential issues — a deadline moved, a counterparty in two separate
   matters, a regulatory filing window overlapping an active negotiation.
4. Help with day-to-day legal ops — contract review, clause extraction, deadline
   calculation, privilege checklists, filing preparation.

## 3. Session start ritual
1. Matters — list matters/active/. Flag anything with deadline within 7 days
   or no activity in 14 days.
2. Inbox — count inbox/. Items older than 5 days get named explicitly.
3. Contracts — list contracts/review/. Flag any in review > 5 days with no note.
4. Work-log carry-over — read last two work-logs. Surface open ## Follow-ups.

## 6. Hard rules
- Never fabricate a statute, regulation, or case citation. If you don't know, say so.
- Never commit a client document to git without confirming it is cleared for the repo.
- Privilege is assumed for attorney communications — do not summarize in shared files.
- Deadlines in matters/ are authoritative. Do not infer dates from conversation.
```

**Skill 1 — Matter Intake** `model: sonnet`
```
Trigger: "Run matter intake" or "new matter"

1. Ask: matter name, client/counterparty, matter type, assigned attorney,
   key deadline, source, brief description.
2. Create matters/active/YYYY-MM-DD-<slug>.md using the matter template.
3. Create or update crm/counterparties/<name>.md if counterparty is new.
4. Add an open task for the first action item.
5. Append to knowledge/log.md.
6. Confirm: "Matter [name] created. First action: [task]. Deadline: [date]."
```

**Skill 2 — Contract Review** `model: opus`
```
Trigger: "Review this contract" or "contract review"

1. Read the contract from inbox/ or contracts/review/.
2. Extract: parties, effective date, term, termination, key obligations (each party),
   payment terms, governing law, notice requirements, unusual clauses.
3. Flag: missing standard clauses, anything conflicting with documents/standards.md.
4. Create a review note in contracts/review/<filename>-notes.md.
5. Do not give legal advice — flag issues for attorney review, not resolution.
```

**Scheduled Task 1 — Daily Deadline Check** `model: haiku`
```
Schedule: Every weekday at 7:30 AM

Scan matters/active/ and read the deadline field from each matter's frontmatter.
Today is {date}.
1. List matters with deadlines within 3 days — mark URGENT.
2. List matters with deadlines within 7 days — mark THIS WEEK.
3. List matters with no deadline field — mark NEEDS DATE.
Save to reports/deadline-check-{date}.md.
Do not alert on matters with status: closed.
```

**Scheduled Task 2 — Weekly Matter Status** `model: haiku`
```
Schedule: Every Monday at 8:00 AM

Read all files in matters/active/.
For each matter: name, assigned attorney, nearest deadline, days since last
work-log mention, current status.
Produce a table sorted by nearest deadline.
Flag any matter with no work-log mention in 10+ days as STALE.
Save to reports/matter-status-{date}.md.
```

---

### Marketing

**What the vault tracks:** Campaigns, content calendar, brand assets, agency relationships,
launch timelines, performance metrics, approvals, creative briefs.

**AGENTS.md excerpt:**
```markdown
## 2. Standing duties
1. Keep the team on top of every active campaign and its launch date.
   Surface anything launching within 10 days at session start.
2. Find what's blocking — campaigns awaiting approval for 3+ days, briefs in
   draft for 5+ days, content calendar gaps in the next 2 weeks.
3. Alert on conflicts — two campaigns targeting the same audience in the same week,
   an agency deadline overlapping an internal review cycle.
4. Help with content and campaigns — draft briefs, review copy for brand alignment,
   generate content calendar entries, summarize campaign performance.

## 3. Session start ritual
1. Campaigns — list campaigns/active/. Flag anything launching within 10 days
   or awaiting approval for more than 3 days.
2. Content calendar — read content-calendar/current.md. Flag any gap in next 14 days.
3. Inbox — count inbox/. Briefs and agency deliverables get surfaced first.
4. Work-log carry-over — read last two work-logs. Surface open ## Follow-ups.

## 6. Hard rules
- Brand voice standards live in documents/brand-standards.md. Check before drafting.
- Never share campaign assets before approval status is confirmed.
- All agency deliverables go to inbox/ first — do not file them directly.
- Performance data is the source of truth. Do not editorialize metrics.
```

**Skill 1 — Campaign Brief** `model: sonnet`
```
Trigger: "New campaign brief" or "write a brief"

1. Ask: campaign name, product/offer, target audience, key message,
   channels, launch date, budget if known, success metric, approval owner.
2. Check documents/brand-standards.md for voice and positioning constraints.
3. Create campaigns/active/YYYY-MM-<slug>/brief.md.
4. Add an open task: brief needs approval from [owner] by [date].
5. Block the launch date in content-calendar/current.md.
```

**Skill 2 — Content Calendar Fill** `model: sonnet`
```
Trigger: "Fill the content calendar" or "content gaps"

1. Read content-calendar/current.md.
2. Identify all dates in the next 21 days with no planned content.
3. Suggest a content type and topic for each gap that fits active campaigns.
4. Present as a table — do not auto-fill. Wait for approval.
5. On approval, update content-calendar/current.md.
```

**Scheduled Task 1 — Launch Countdown** `model: haiku`
```
Schedule: Every weekday at 8:00 AM

Scan campaigns/active/ and read the launch_date field from each campaign.
Today is {date}.
List campaigns launching within 10 days, sorted by launch date.
For each: name, launch date, days remaining, approval status.
Flag campaigns launching within 5 days with approval status not "approved" as AT RISK.
Save to reports/launch-countdown-{date}.md.
```

**Scheduled Task 2 — Weekly Campaign Summary** `model: sonnet`
```
Schedule: Every Monday at 8:30 AM

Read campaigns/active/ and campaigns/completed/ modified in the last 7 days.
Summarize: what launched, what is in progress, what comes up this week.
Note campaigns that moved to completed. Note any that missed their launch date.
Save to reports/campaign-summary-{date}.md.
```

---

### Sales

**What the vault tracks:** Opportunities, accounts, contacts, proposals, pipeline stages,
follow-up schedules, competitive intel, won/loss analysis.

**AGENTS.md excerpt:**
```markdown
## 2. Standing duties
1. Keep the team on top of every open opportunity and its next action date.
   Surface anything overdue or due today at session start.
2. Find what's going stale — opportunity with no activity in 7 days, proposal
   sent but not followed up within 3 days.
3. Alert on timing risks — proposal expiry approaching, decision date within
   the week, competitive situation mentioned in an earlier note.
4. Help with sales execution — draft proposals, follow-up emails, call prep,
   win/loss summaries, account research.

## 3. Session start ritual
1. Pipeline — list opportunities/active/ sorted by next_action date.
   Flag anything where next_action is today or overdue.
2. Proposals — list proposals/sent/. Flag any sent 3+ days ago with no follow-up.
3. Inbox — count inbox/. Surface any inbound from prospects first.
4. Work-log carry-over — read last two work-logs. Surface open ## Follow-ups.

## 6. Hard rules
- Never fabricate account data, contact details, or deal values.
- Pricing and discount limits are in documents/pricing-policy.md. Flag any
  proposal that exceeds those limits before drafting.
- A lost opportunity always gets a loss reason filed before closing.
- CRM is the system of record. The vault mirrors it for context — not replaces it.
```

**Skill 1 — Opportunity Intake** `model: sonnet`
```
Trigger: "New opportunity" or "log a deal"

1. Ask: account name, contact name/title, opportunity name, estimated value,
   source, current stage, next action, next action date, decision timeline.
2. Create opportunities/active/YYYY-MM-<slug>.md.
3. Create/update crm/accounts/<account>.md and crm/contacts/<name>.md.
4. Add an open task for the next action with its due date.
```

**Skill 2 — Call Prep** `model: sonnet`
```
Trigger: "Prep for my call with [name]" or "call prep"

1. Read crm/accounts/<account>.md, crm/contacts/<name>.md, and the latest
   opportunity file for this account.
2. Read any recent work-log entries mentioning this account.
3. Produce a call prep note: who they are, where the deal stands, what they
   care about, suggested agenda (3 items max), things to listen for.
4. Save to inbox/ as call-prep-<account>-{date}.md.
```

**Scheduled Task 1 — Daily Pipeline Pulse** `model: haiku`
```
Schedule: Every weekday at 7:00 AM

Scan opportunities/active/. Today is {date}.
1. List opportunities where next_action date is today or earlier — mark OVERDUE.
2. List opportunities where next_action date is tomorrow — mark DUE TOMORROW.
3. List opportunities with no work-log mention in 7+ days — mark STALE.
Save to reports/pipeline-pulse-{date}.md.
```

**Scheduled Task 2 — Weekly Win/Loss Review** `model: sonnet`
```
Schedule: Every Friday at 4:30 PM

Read opportunities/won/ and opportunities/lost/ modified in the last 7 days.
Won deals: account, value, deal length, source.
Lost deals: account, value, loss reason, competitor if noted.
Identify patterns across the week's losses.
Save to reports/win-loss-{date}.md.
```

---

### Software Engineering / Development

**What the vault tracks:** Architecture decisions, incident runbooks, service ownership,
sprint context, technical debt, API contracts, deployment procedures, post-mortems.

**AGENTS.md excerpt:**
```markdown
## 2. Standing duties
1. Keep the team on top of active incidents and open investigations.
   Surface any incident without resolution or owner at session start.
2. Find what's undocumented — a service with no system page, a recent deployment
   with no runbook, a decision made in conversation but never filed.
3. Alert on risk — a deployment with no rollback plan, a service with no owner,
   a known debt item blocking a dependency.
4. Help with technical work — write runbooks, draft ADRs, generate system pages,
   assist with code review checklists, answer questions from actual architecture.

## 3. Session start ritual
1. Incidents — list incidents/active/. Any open incident over 2 hours old without
   a resolution note is flagged immediately.
2. Deployments — read last work-log. Flag any deployment without a post-deploy
   validation note.
3. Inbox — count inbox/. Prioritize monitoring alerts or on-call pages.
4. Knowledge gaps — list knowledge/systems/. Flag any service missing an owner
   or with last_reviewed > 90 days.
5. Work-log carry-over — read last two work-logs. Surface open ## Follow-ups.

## 6. Hard rules
- Never invent API behavior, database schema, or config values. Read the code.
- Every production change gets a runbook entry before it runs, not after.
- Architecture decisions go in knowledge/decisions/ as ADRs. Undocumented decisions
  are intentions, not decisions.
- Incidents are not closed until root cause and prevention entries exist.
- Secrets never go in the vault. Reference the secret manager — never the secret.
```

**Skill 1 — Incident Response** `model: sonnet`
```
Trigger: "Incident" or "something is down"

1. Ask: what service, what symptom, when started, who is on it, severity.
2. Create incidents/active/YYYY-MM-DD-HHMM-<slug>.md immediately.
3. Check knowledge/systems/<service>.md for runbooks and known issues.
4. Check knowledge/solutions/ for prior incidents with matching symptoms.
5. Surface relevant runbook steps and prior solutions immediately.
6. At resolution: update incident file with root cause and prevention.
   Move to incidents/resolved/. Update knowledge/solutions/.
```

**Skill 2 — ADR (Architecture Decision Record)** `model: opus`
```
Trigger: "Write an ADR" or "document this decision"

1. Ask: what was decided, what alternatives were considered, why this option,
   what constraints drove it, what the consequences are, who was involved, when.
2. Create knowledge/decisions/YYYY-MM-DD-<slug>.md using the ADR template.
3. Link from the relevant knowledge/systems/ page.
4. Append to knowledge/log.md.
```

**Scheduled Task 1 — Morning Engineering Brief** `model: haiku`
```
Schedule: Every weekday at 8:00 AM

Today is {date}.
1. List any open incidents in incidents/active/.
2. List any deployments planned today from work-logs/ and tasks/open/.
3. List any tasks past their due date.
4. Flag any knowledge/systems/ page with last_reviewed older than 90 days.
Save to reports/engineering-brief-{date}.md.
```

**Scheduled Task 2 — Weekly Knowledge Lint** `model: sonnet`
```
Schedule: Every Monday at 9:00 AM

1. List knowledge/systems/ pages missing: owner, last_reviewed, or runbook link.
2. List knowledge/decisions/ pages with no link from a systems page.
3. List incidents/resolved/ from the last 30 days with no knowledge/solutions/ entry.
Report findings. Do not auto-fix — surface for human review.
Save to reports/knowledge-lint-{date}.md.
```

---

### Insurance Operations

**What the vault tracks:** Policy processing workflows, carrier relationships, compliance
deadlines, regulatory filings, underwriting guidelines, claims handoffs, vendor SLAs,
audit schedules, procedure manuals.

**AGENTS.md excerpt:**
```markdown
## 2. Standing duties
1. Keep the team on top of every active compliance deadline and regulatory filing.
   Surface anything due within 14 days at session start without being asked.
2. Find what's drifting — procedures not reviewed in 90 days, vendor SLA reports
   overdue, carrier guideline updates not yet reflected in procedures.
3. Alert on regulatory risk — a state filing deadline approaching, a carrier change
   touching active policies, an audit scheduled over an open process gap.
4. Help with operational execution — draft procedure updates, generate compliance
   checklists, summarize carrier guideline changes, prepare audit evidence packages.

## 3. Session start ritual
1. Filings — list compliance/filings/pending/. Flag anything due within 14 days.
2. Procedures — list runbooks/. Flag any with last_reviewed > 90 days.
3. Carriers — list crm/carriers/. Flag any with a pending guideline update.
4. Inbox — count inbox/. Prioritize regulatory notices and carrier communications.
5. Work-log carry-over — read last two work-logs. Surface open ## Follow-ups.

## 6. Hard rules
- Regulatory deadlines in compliance/filings/ are authoritative. Never adjust a
  filing date without a documented reason and approval.
- Carrier guidelines live in crm/carriers/<carrier>/guidelines.md. Do not answer
  underwriting questions from memory — read the current guideline.
- Audit evidence packages are assembled from vault files only. Never fabricate.
- Procedure changes require a change log entry and a last_reviewed date update.
```

**Skill 1 — Procedure Update** `model: sonnet`
```
Trigger: "Update a procedure" or "carrier changed their guidelines"

1. Ask: which procedure, what changed, what triggered the change, who approved, effective date.
2. Read the current procedure file.
3. Apply the changes. Add a change log entry.
4. Update the last_reviewed date in frontmatter.
5. If the change came from a carrier notice: link the inbox source to the procedure.
6. If the change affects a filing: flag the relevant filing for review.
```

**Skill 2 — Audit Evidence Package** `model: opus`
```
Trigger: "Prepare for audit" or "audit evidence"

1. Ask: audit name, auditing party, scope, evidence period, due date.
2. Create projects/YYYY-MM-audit-<slug>/ with README, evidence/, and checklist.md.
3. Generate an evidence checklist:
   - Each in-scope procedure and its last_reviewed date
   - Each in-scope compliance filing and its status
   - Work-log entries in the evidence period touching in-scope processes
4. Flag any gap: a process in scope with no procedure, a filing with no confirmation.
5. Do not assemble the evidence package — produce the checklist for human review first.
```

**Scheduled Task 1 — Compliance Deadline Monitor** `model: haiku`
```
Schedule: Every weekday at 7:00 AM

Scan compliance/filings/pending/. Today is {date}.
1. List filings with deadline within 7 days — mark URGENT.
2. List filings with deadline within 14 days — mark THIS MONTH.
3. List any filing with status: overdue.
4. List any filing with no owner assigned.
Save to reports/compliance-monitor-{date}.md.
```

**Scheduled Task 2 — Procedure Review Cycle** `model: haiku`
```
Schedule: Every Monday at 8:00 AM

Scan all files in runbooks/. Read the last_reviewed field from each file.
Today is {date}.
1. List procedures with last_reviewed older than 90 days — mark OVERDUE FOR REVIEW.
2. List procedures with last_reviewed older than 60 days — mark DUE SOON.
3. List procedures with no last_reviewed field — mark NEVER REVIEWED.
Save to reports/procedure-review-{date}.md.
```

---

### Finance & Accounting

**What the vault tracks:** Invoices (AP/AR), purchase orders, budgets, vendor relationships,
month-end close checklists, audit schedules, expense reports, financial reconciliations,
approval workflows, financial reports.

**AGENTS.md excerpt:**
```markdown
## 2. Standing duties
1. Keep the team on top of every open invoice and its payment due date.
   Surface anything due within 5 days or awaiting approval for 3+ days at session start.
2. Find what's stalled — invoices not moving, budget lines not reconciled, month-end close
   items unchecked past their target date.
3. Alert on timing risks — payment deadlines, audit dates, budget cycle milestones,
   period-close windows.
4. Help with financial operations — draft payment approval notes, reconciliation summaries,
   budget variance analyses, vendor communications.

## 3. Session start ritual
1. Invoices — scan invoices/pending/. Flag anything due within 5 days or awaiting approval
   for more than 3 days.
2. Month-end close — if today is within 5 days of month end, read
   checklists/month-end-close.md and flag any incomplete item.
3. Inbox — count inbox/. Prioritize invoices, vendor communications, and approval requests.
4. Work-log carry-over — read last two work-logs. Surface open ## Follow-ups.

## 6. Hard rules
- Never modify financial figures in source documents. Note discrepancies and surface them
  for human review — do not resolve them.
- Never approve a payment or financial commitment. Flag for the appropriate approval authority.
- Budget figures are authoritative only when sourced from documents/budget-YYYY.md.
  Do not derive budget numbers from conversation or estimation.
- Personnel compensation data goes in _private/ — never in shared vault files.
- Every financial entry must include a source document reference. No undocumented figures.
```

**Skill 1 — Invoice Intake** `model: sonnet`
```
Trigger: "New invoice", "log an invoice", "invoice intake"

1. Ask: vendor name, invoice number, amount, invoice date, due date, cost center,
   approval required from, description of goods/services.
2. Create invoices/pending/YYYY-MM-DD-<vendor>-<invoice-number>.md.
3. Create or update crm/vendors/<vendor>.md if vendor is new.
4. Add an open task: get approval from [approver] by [date - 2 days].
5. Confirm: "Invoice [number] logged. Approval needed from [approver] by [date]."
```

**Skill 2 — Budget Variance Summary** `model: sonnet`
```
Trigger: "Budget variance", "how are we tracking against budget", "variance summary"

1. Ask: which cost center or budget area, which period.
2. Read documents/budget-YYYY.md for the relevant lines.
3. Read invoices/paid/ and expenses/ for actuals in the period.
4. Produce a variance table: budget vs actual vs remaining, per line.
5. Flag any line over 90% consumed or over budget.
6. Save to reports/budget-variance-<period>-{date}.md.
7. Do not project or forecast — report actuals only.
```

**Scheduled Task 1 — Daily AP/AR Check** `model: haiku`
```
Schedule: Every weekday at 7:30 AM

Scan invoices/pending/. Today is {date}.
1. List invoices with due date within 3 days — mark URGENT.
2. List invoices with due date within 5 days — mark THIS WEEK.
3. List invoices awaiting approval for more than 3 days — mark APPROVAL STALLED.
4. List any invoice with no approval_required field — mark NEEDS OWNER.
Save to reports/ap-check-{date}.md.
```

**Scheduled Task 2 — Month-End Close Tracker** `model: haiku`
```
Schedule: Every weekday at 8:00 AM during the last 5 days of the month

Read checklists/month-end-close.md. Today is {date}.
List all checklist items. For each: item name, owner, status, due date.
Flag any item: past due (mark OVERDUE), due today (mark DUE TODAY),
not yet started with due date within 2 days (mark AT RISK).
Count: total items, completed, remaining.
Save to reports/month-end-close-{date}.md.
```

---

### Human Resources

**What the vault tracks:** Open positions, candidate pipelines, onboarding checklists,
offboarding procedures, HR policy documents, performance review cycles, headcount,
training records, employee relations process notes (anonymized).

**AGENTS.md excerpt:**
```markdown
## 2. Standing duties
1. Keep the team on top of every open position and its recruiting activity.
   Surface any position with no candidate pipeline movement in 7 days.
2. Find what's slipping — onboarding items past their due date, performance review
   windows closing within 7 days, policy documents not reviewed in 12 months.
3. Alert on timing risks — offer expiry dates, background check deadlines, performance
   review submission windows, benefits enrollment periods.
4. Help with HR operations — draft job descriptions, onboarding plans, policy summaries,
   position requisitions, offer letter templates.

## 3. Session start ritual
1. Positions — list positions/open/. Flag any with no candidate activity in 7 days.
2. Onboarding — list onboarding/active/. Flag any checklist item past its target date.
3. Reviews — check performance/cycles/ for any review window open or closing within 7 days.
4. Inbox — count inbox/. Prioritize candidate applications and employee requests.
5. Work-log carry-over — read last two work-logs. Surface open ## Follow-ups.

## 6. Hard rules
- Personnel files and individual performance notes go in _private/ — never in the shared vault.
  The shared vault contains only anonymized patterns and process documents.
- Never share individual compensation data in shared vault files. Use _private/ or omit entirely.
- Employee relations cases are anonymized in shared files. Case details go in _private/.
- Never make a hiring decision or policy determination. Prepare materials for human decision-making.
- Policy documents must include last_reviewed and approved_by in frontmatter. Do not answer
  policy questions from memory — read the current policy file.
- Candidate data is confidential. Do not reference specific candidates in shared work-logs.
  Use the position name and pipeline stage only.
```

**Skill 1 — Position Intake** `model: sonnet`
```
Trigger: "New position", "open a role", "position intake"

1. Ask: job title, department, hiring manager, target start date, headcount type
   (backfill/new), key responsibilities (3-5 bullets), required qualifications,
   preferred qualifications, salary range (for _private/ only), approval status.
2. Create positions/open/YYYY-MM-DD-<slug>.md with all fields except salary.
3. Create positions/open/YYYY-MM-DD-<slug>-compensation.md in _private/ for salary details.
4. Add an open task: post job description by [target date].
5. Add crm/people/<hiring-manager>.md stub if it doesn't exist.
6. Confirm: "Position [title] opened. Next step: post JD by [date]."
```

**Skill 2 — Onboarding Checklist Runner** `model: haiku`
```
Trigger: "Start onboarding for [name]", "new hire onboarding", "onboarding checklist"

1. Ask: new hire name, role, start date, hiring manager, IT contact, buddy/mentor.
2. Copy _templates/onboarding-checklist.md to onboarding/active/<name>-<startdate>.md.
3. Fill in: name, role, start date, manager, IT contact, buddy.
4. Generate a day-by-day schedule for week 1 based on the template.
5. Add tasks for each checklist owner: IT (day 1 setup), manager (day 1 intro),
   HR (day 3 benefits enrollment), buddy (day 5 check-in).
6. Confirm: "Onboarding checklist created for [name]. Starting [date].
   Tasks created for IT, [manager], and [buddy]."
```

**Scheduled Task 1 — Daily Recruiting Pipeline** `model: haiku`
```
Schedule: Every weekday at 8:00 AM

Scan positions/open/. Today is {date}.
For each position: title, hiring manager, candidate count by stage,
days since last pipeline movement.
Flag any position with no pipeline movement in 7 days — mark STALLED.
Flag any position with an offer outstanding more than 3 days — mark OFFER PENDING.
Save to reports/recruiting-pipeline-{date}.md.
Note: do not name individual candidates in this report.
```

**Scheduled Task 2 — Weekly Onboarding Status** `model: haiku`
```
Schedule: Every Monday at 8:30 AM

Read all files in onboarding/active/. Today is {date}.
For each active onboarding: new hire (first name + role only), start date,
week number, checklist completion percentage, any items overdue.
Flag any item more than 3 days past its target date — mark OVERDUE.
Save to reports/onboarding-status-{date}.md.
```

---

## Included Skills

Three domain-agnostic skills ship with the template. They work for any team type and require
no configuration. Trigger them by saying the phrase in any Claude session.

---

### Grill Me — Relentless Planning Interview

**Trigger:** "Grill me", "interview me about this", "poke holes in my plan", "help me think
through this"

**What it does:** Conducts a systematic interview about any plan — a project, a decision, a
trip, a business idea, anything. It reads the vault for relevant context before asking a
single question, maps the planning tree in dependency order, walks every branch without
skipping, and closes with a structured summary of what's solid, what's deferred, and the
single biggest risk.

**When to use it:** Before starting a significant project, making a major decision, or any
time you want to pressure-test a plan before committing to it.

**File:** `_claude/skills/grill-me/SKILL.md` — Model: Sonnet

---

### STORM — Multi-Perspective Research

**Trigger:** "STORM this", "run STORM on [topic]", "multi-perspective analysis of",
"research briefing on"

**What it does:** Runs the Stanford STORM research method on any topic. Analyzes through
five expert lenses (practitioner, academic, skeptic, economist, historian), maps contradictions
between them, produces a structured research briefing, then critiques its own output.

**When to use it:** Before writing a report, making a major investment or hire, evaluating a
vendor, preparing for a difficult meeting, or any situation requiring rigorous multi-angle
analysis.

**File:** `_claude/skills/storm/SKILL.md` — Model: Sonnet

---

### Extract Wisdom — Content Distillation

**Trigger:** "Extract wisdom from this", "distill this", "pull insights from", "what are the
key ideas in [document]"

**What it does:** Takes any content — an article, a meeting transcript, a contract, a report,
a video transcript — and extracts the most novel, actionable, and non-obvious insights.
Produces a structured output: summary, one-sentence takeaway, ideas, themes, quotes, facts,
references, and recommendations.

**When to use it:** After reading a long document you want to retain, processing inbox items
into knowledge, or turning a meeting transcript into filed insights.

**File:** `_claude/skills/extract-wisdom/SKILL.md` — Model: Sonnet

---

### Adding your own skills

During the setup ritual, Claude will help you create your first domain-specific skill.
After that, add skills by creating a new folder under `_claude/skills/<skill-name>/` with
a `SKILL.md` file. See the examples in the Department Playbooks section for the format
and the model guidance.

**Full skills reference:** `_claude/skills/README.md`

---

## The Setup Ritual

> **For Claude:** Run this ritual interactively when a new team opens this vault for the first
> time. Do not skip questions. Do not auto-generate without confirmation. Use Sonnet throughout.
> The goal: a working `AGENTS.md`, one configured skill, and one scheduled task — all tailored
> to how this specific team actually works — by the end of the conversation.

---

### Step 1 — Orient

Ask the user:

> "Before we configure anything, tell me about your team in a few sentences: what does your
> team actually do day to day, what are the things that fall through the cracks, and what's
> the one thing you wish you didn't have to remember to do manually?"

Listen for:
- The core operational loop (what they track, what they produce)
- The recurring pain (the thing that gets missed, the thing that's always late)
- The manual task they hate most (this becomes the first scheduled task)

---

### Step 2 — Map their domain vocabulary

Based on their answer, surface the key nouns: what are the objects this team manages?

Examples: matters, campaigns, opportunities, incidents, policies, cases, tickets, filings,
contracts, clients, orders, approvals.

Confirm: "It sounds like the main things your team tracks are [X, Y, Z]. Does that sound
right, or am I missing something?"

These nouns become the folder names, the things Claude scans at session start, and the units
the scheduled tasks report on.

---

### Step 3 — Draft AGENTS.md together

Walk through each section:

**Identity:** "Describe your team in one sentence — who you are and what the vault is for."

**Standing duties:** "What are the 3–4 things you need to know at the start of every day
without asking? What should Claude always be watching for?"

**Session start ritual:** Propose a scan based on their domain vocabulary. Example:
"I'll scan [folder] for anything due within [N] days, [folder] for items older than [N] days,
and the last two work-logs for open follow-ups. Does that cover it?"

**Hard rules:** "What should Claude never do, never assume, or never skip? Think about what
would break your trust — a wrong number, a fabricated citation, a missing approval."

Draft the full `AGENTS.md` and confirm before writing it to disk.

---

### Step 4 — Configure the first skill

Ask: "From the examples in this guide, does any skill feel immediately useful — or do you
have a specific workflow you'd want to trigger with a single phrase?"

If they choose from the examples: adapt it to their domain vocabulary.

If they describe something new, build the skill using this structure:
```yaml
---
name: skill-name
model: sonnet      # haiku if read-only, opus if high-stakes
---

Trigger: [phrase]
Workflow:
  1. Ask: [what information is needed]
  2. [create / update / read files]
  3. [confirm back to user]
```

Write it to `_claude/skills/<skill-name>/SKILL.md`.

**Model guidance when choosing:** if the skill only reads and reports, suggest haiku. If it
drafts or creates, suggest sonnet. If the output has serious consequences if wrong, suggest opus.

---

### Step 5 — Configure the first scheduled task

Ask: "What's the one thing that should happen automatically every morning before you start
work — even when you don't ask for it?"

Common answers by domain:
- Legal: deadline check (haiku)
- Sales: pipeline pulse (haiku)
- Marketing: launch countdown (haiku)
- Engineering: incident + deployment check (haiku)
- Insurance ops: compliance deadline monitor (haiku)

Most morning scans are reads-and-reports — use `model: haiku` by default and explain why.

Draft the prompt. Confirm the schedule. Write to `_claude/scheduled-tasks/<task-name>.md`.

Then say: "To activate this schedule, your Claude Code administrator registers this file as a
cron task. The prompt file is your source of truth — the schedule just runs it."

---

### Step 6 — Close

Confirm what was built:
- `AGENTS.md` — the operating contract for this vault
- `_claude/skills/<skill>/SKILL.md` — first reusable workflow
- `_claude/scheduled-tasks/<task>.md` — first automated task

Then say:

> "Your vault is configured. From this point, every session starts with Claude scanning what
> you told it to watch. Every morning the scheduled task runs without you asking. As you use
> the system, it accumulates your team's knowledge — solved problems, filed procedures,
> answered questions — so the next person who joins doesn't start from zero.
>
> Two things to do now:
> 1. Run `git init` in this folder and push it to your team's GitHub — that's your backup,
>    audit trail, and how the whole team shares access.
> 2. Add your first real item: a project, a matter, an opportunity — whatever is most active
>    right now. The vault gets useful the moment real work lives in it."

---

## Connectors & Integrations

Connectors let Claude read from and write to systems outside the vault — email, calendars,
spreadsheets, CRMs, document stores. They are optional but significantly increase leverage
for most teams.

**Full connector reference:** `_claude/config/connectors.md`

### Universal — recommended for all teams

| Connector | What it enables | How to set up |
|-----------|----------------|---------------|
| **Microsoft 365** (Outlook, Calendar, Teams, SharePoint) | Read emails, meetings, company documents; draft responses | Enable in Claude Code MCP settings — requires M365 admin approval |
| **Google Workspace** (Gmail, Calendar, Drive, Docs, Sheets) | Same as M365 for Google shops | Enable in Claude Code MCP settings — requires Google Workspace admin approval |
| **PDF reader** | Read contracts, reports, invoices, policies directly — Claude Code handles PDFs natively via the Read tool | No setup needed — already available |
| **GitHub** | Create issues, PRs; read repo state | `gh auth login` — GitHub CLI already available after step 8 |

### By team type

**Legal**
| Connector | Use |
|-----------|-----|
| Microsoft 365 / SharePoint | Access matter documents, policy library, regulatory filings |
| PDF reader | Contract review, court documents, regulatory guidance |
| Outlook | Client and counterparty communications |
| DocuSign (if available) | Track signature status on executed documents |
| Word export | Generate formatted contract drafts from vault markdown |

**Finance & Accounting**
| Connector | Use |
|-----------|-----|
| Excel / Google Sheets | Read financial models, budget files, reconciliation workbooks |
| Outlook | Vendor communications, approval workflows |
| SharePoint | Access financial policies, audit documentation |
| ERP connector (SAP, QuickBooks, NetSuite) | Read GL entries, invoice status — requires custom setup |
| Power BI (read-only) | Pull report data into vault summaries |

**Human Resources**
| Connector | Use |
|-----------|-----|
| Outlook / Calendar | Interview scheduling, employee communications |
| SharePoint | HR policies, job description library, forms |
| Excel / Google Sheets | Headcount models, compensation bands (in _private/) |
| HRIS (Workday, BambooHR, Rippling) | Sync employee status, onboarding triggers — requires custom setup |
| LinkedIn (read) | Candidate research, job posting status |

**Marketing**
| Connector | Use |
|-----------|-----|
| Google Analytics / Search Console | Pull performance data into campaign reports |
| Google Sheets | Content calendars, campaign trackers |
| Outlook / Gmail | Agency and client communications |
| PowerPoint / Google Slides | Read and draft presentations |
| Social media APIs | Read post performance (requires platform setup) |

**Sales**
| Connector | Use |
|-----------|-----|
| CRM (Salesforce, HubSpot) | Sync opportunity status, contact records — requires custom setup |
| Outlook / Gmail | Customer communications, follow-up drafts |
| Excel / Google Sheets | Pipeline reports, territory maps |
| LinkedIn (read) | Prospect research |
| PowerPoint | Proposal and deck generation |

**Software Engineering**
| Connector | Use |
|-----------|-----|
| GitHub | Read PRs and issues; create issues from vault tasks |
| Slack | Read channel context; draft announcements |
| Jira / Linear | Sync ticket status with vault tasks |
| CI/CD (GitHub Actions, Azure DevOps) | Read deployment status into work-logs |

**Insurance Operations**
| Connector | Use |
|-----------|-----|
| Excel | Policy data exports, claims reports, vendor SLA tracking |
| Outlook | Carrier and broker communications |
| SharePoint | Regulatory filing library, procedure manuals |
| PDF reader | Policy documents, claims forms, regulatory bulletins |

---

### Setting up a connector

1. Open Claude Code: `claude` in the vault directory
2. Navigate to MCP server settings (check your Claude Code version for the exact path)
3. Add the connector using its MCP server name and any required credentials
4. Test it: ask Claude to read one item from the connected system
5. Document what was connected in `_claude/config/connectors.md` — this keeps the
   vault self-documenting and makes onboarding new team members reproducible

**Never store credentials in the vault.** Connectors authenticate via OAuth tokens or
service accounts managed outside the vault. The vault records what connectors are
configured — not the secrets that authenticate them.

---

## Quick Reference — What Goes Where

| You have... | It goes in... |
|---|---|
| Active work (project, matter, campaign, deal) | `projects/` or a domain folder |
| A daily activity note | `work-logs/YYYY-MM-DD.md` |
| Something to triage later | `inbox/` |
| A step-by-step procedure | `runbooks/` |
| Something the team needs to know | `knowledge/` |
| A one-off task | `tasks/open/` |
| A completed project | `archive/` |
| A reusable AI workflow | `_claude/skills/` |
| An automated AI task | `_claude/scheduled-tasks/` |
| A person or organization | `crm/people/` or `crm/organizations/` |

## Quick Reference — Model Selection

| Task | Model |
|------|-------|
| Scheduled scans and reports | haiku |
| Inbox triage, listing, counting | haiku |
| Drafting documents, emails, runbooks | sonnet |
| Running most skills | sonnet |
| Contract review, legal analysis | opus |
| Architecture decisions, security analysis | opus |
| Anything where a mistake won't be caught | opus |

---

## The One Rule

**The vault must be self-contained.** Every configuration, every rule, every AI instruction
lives in this folder — not in the AI app's settings, not in a cloud account, not in someone's
memory.

If you hand this folder to someone new, or to a different AI model, or to a colleague in
another city, the system works exactly the same way with no additional setup.

That is the whole point.
