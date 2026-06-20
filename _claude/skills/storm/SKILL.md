---
name: storm
description: >-
  Runs the Stanford STORM multi-perspective research method on any topic. Analyzes through five expert
  lenses (practitioner, academic, skeptic, economist, historian), maps contradictions across them,
  synthesizes a structured research briefing, then critiques its own output. Use before writing a
  report, making a business decision, evaluating an investment, preparing for an interview, or entering
  any situation requiring rigorous multi-angle analysis. Trigger on phrases like "STORM this",
  "run STORM on", "multi-perspective analysis", "research briefing on", or when the user pastes a
  topic and wants structured expert inquiry.
model: sonnet
compatibility: No external dependencies — works entirely from pasted topic or vault files.
---

# Stanford STORM Method

## What this skill does

This skill runs the Stanford STORM method on any topic, producing a research briefing that no
single-perspective answer can match. It analyzes the topic through five expert lenses (practitioner,
academic, skeptic, economist, historian), maps where they agree and contradict, synthesizes a
structured briefing with ranked key findings and an actionable recommendation, then critiques its
own output with confidence scores and an overall grade.

Output is Markdown, produced in one response across four phases. The user provides a topic or
points to a vault file; no other input is required.

---

Your job is to run a **structured multi-perspective inquiry** on the user's topic, producing a
research briefing that is more rigorous than any single-angle answer.

You work through four phases in sequence. Complete each phase fully before moving to the next.
Output only Markdown. No warnings, notes, or meta-commentary between phases.

---

## Input

The user will either:
- State a topic or question directly, or
- Reference a file or project in the vault (read it before proceeding)

If the topic is ambiguous, ask once for clarification before proceeding.

---

## Phase 1: Multi-Perspective Scan

Analyze the topic through all five lenses. For each perspective, produce exactly three sub-bullets:

- **Core position** — the central claim this perspective makes about the topic
- **Best supporting evidence** — the strongest data, case, or argument behind it
- **Unique insight** — what this perspective sees that the other four miss

### Perspectives

**Practitioner** — someone who does this work daily; values lived experience over models.

**Academic** — a researcher in the relevant field; values rigor, precision, and long-run patterns.

**Skeptic** — doubts the prevailing consensus; focuses on incentives and missing evidence.

**Economist** — thinks in incentives, tradeoffs, and second-order effects.

**Historian** — looks at how this topic has evolved; focuses on precedents and cycles.

---

## Phase 2: Contradiction Map

- **Core disagreements** — where perspectives directly contradict each other, and why
- **Strongest view** — which perspective has the best-supported position
- **Shared claim** — what all five agree on (even implicitly)
- **Unaddressed gap** — the important angle none of the five covered

---

## Phase 3: Synthesis Briefing

**Executive Summary** — one paragraph, what the analysis revealed and what it means for action.

**Key Findings** — five bullets ranked by reliability, each citing its source perspective(s).

**Hidden Connection** — one non-obvious link across two or more perspectives.

**Actionable Recommendation** — the single most useful thing to do or decide differently.

**Frontier Question** — the question that, if answered, would most change the analysis.

---

## Phase 4: Peer Review

**Confidence Scores** — one bullet per Key Finding: `[Finding] — [High/Medium/Low]` with reason.

**Weakest Claim** — which finding is most likely wrong and what would falsify it.

**Synthesis Bias** — where the briefing may be tilted by perspective weighting or framing.

**Missing Perspective** — a sixth lens that would add something the five-scan missed.

**Overall Grade and Improvement** — grade (A/B/C/D) and the single change that would most improve it.

---

## Output Rules

- Complete all four phases in a single response unless the user asks to step through them.
- Bulleted lists only — no numbered lists.
- No filler, no transitions, no summaries of what you just did.
