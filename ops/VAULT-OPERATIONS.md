# Vault Operations

Small, durable operation map for using this vault effectively without memorizing a giant command catalog.

The point is not exact slash commands. The point is a stable set of **intent patterns** that map natural language to the right vault workflow.

Use this as the default operating layer for recap, retrieval, capture, project work, and review.

---

## How to use this

You can ask in natural language.

Examples:
- "recap what we know about this topic"
- "find everything relevant about [person]"
- "save this as a decision in the [project] project"
- "ingest this article into the vault"
- "review what is still open this week"

The agent should route those requests to one of the operations below.

---

## Core operations

### 1. recap
**Use when:** you want the short version of a topic, project, day, meeting, or source.

**What it does:**
- pulls the most relevant existing vault context
- compresses it into a usable summary
- highlights open loops when they matter

**Examples:**
- recap [project name]
- recap today
- recap what changed in [project]

---

### 2. find
**Use when:** you want retrieval, not synthesis first.

**What it does:**
- searches the vault for relevant pages, notes, journal entries, contacts, and project references
- returns the best hits and then answers from them

**Examples:**
- find everything about [topic]
- find references to [person]
- find past notes about [subject]

---

### 3. save
**Use when:** something from chat should become durable knowledge.

**What it does:**
- stores the information in the right place
- prefers the smallest durable write that preserves meaning

**Typical targets:**
- journal/
- projects/<project>/DECISIONS.md
- projects/<project>/NOTES.md
- wiki/topics/
- contacts/

**Examples:**
- save this as a project note
- save this insight
- save this quote

---

### 4. ingest
**Use when:** an external source should enter the vault.

**What it does:**
- preserves source material in raw/
- creates or updates summary/topic/concept pages
- links the result into the rest of the vault

**Examples:**
- ingest this article into the wiki
- capture this book and what I thought about it
- add this idea to the knowledge base

---

### 5. project
**Use when:** the request is mainly about project state, planning, or execution structure.

**What it does:**
- reads or updates the project home
- keeps PROJECT_CONTEXT, TASKS, DECISIONS, NOTES, and artifacts aligned

**Examples:**
- show project state for [project]
- create a new project for [topic]
- update [project] with this change

---

### 6. task
**Use when:** a new action item should be captured or routed.

**What it does:**
- decides whether the task belongs in vault-local TASKS.md or in a project tracker
- creates the right tracking entry
- links the task back to the project home

**Examples:**
- add this task to [project]
- what tasks are still open for [project]?

---

### 7. decide
**Use when:** a real decision was made and should not be rediscovered later.

**What it does:**
- records the decision, rationale, and implications in the right project or system note
- updates related workflow docs when needed

**Examples:**
- record this decision
- document why we chose [option]

---

### 8. review
**Use when:** you want a structured look back across recent work.

**What it does:**
- reviews recent project activity, journal entries, and tracking notes
- surfaces open loops, stalled work, and things worth promoting into durable notes

**Examples:**
- review this week
- review open loops across projects

---

### 9. health
**Use when:** you want the vault checked for structural quality.

**What it does:**
- looks for stale pages, contradictions, weak links, orphan notes, or navigation issues
- proposes low-risk fixes first

**Examples:**
- run a vault health check
- find stale project pages
- look for contradictions in topic pages

---

### 10. journal
**Use when:** the main output should be a journal entry.

**What it does:**
- creates or updates a time-based record in journal/
- links people and relevant context when appropriate
- keeps the journal as an event stream, not the final knowledge endpoint

**Examples:**
- create a journal entry for this
- journal today's work

---

## Routing rules

When a request could fit more than one operation, prefer this order:
1. **project** if the request is mainly about a specific active project
2. **task** if the main need is execution tracking
3. **decide** if a durable decision was made
4. **journal** if the main output is time-based daily record
5. **save** for general durable capture
6. **recap** for synthesis-first questions
7. **find** for retrieval-first questions
8. **ingest** for new external sources
9. **review** for retrospective scanning
10. **health** for structure-quality checks

---

## What not to do

- Do not create a new top-level workflow for every repeated task.
- Do not turn natural-language interaction into command memorization.
- Do not dump chat transcripts into the vault.
- Do not use journal/ as a substitute for project or wiki knowledge.

---

## Preferred style

The user should be able to speak normally.

If the intent is obvious, route automatically. Ask only when the destination truly matters and is ambiguous.
