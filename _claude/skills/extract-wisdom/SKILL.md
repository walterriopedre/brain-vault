---
name: extract-wisdom
description: >-
  Distills any content (article, transcript, video, book chapter, talk, document) down to its most
  novel, actionable, and non-obvious insights. Produces structured Markdown output with a summary,
  one-sentence takeaway, ideas, themes, quotes, facts, references, and recommendations — in
  descending order of novelty. Prioritizes depth over padding: never fills a minimum count with weak
  entries. Trigger on phrases like "extract wisdom", "distill this", "pull insights from", "summarize
  this content", "what are the key ideas in", or when the user pastes a long piece of content and
  wants it synthesized.
model: sonnet
compatibility: No external dependencies — works entirely from pasted content or vault files.
---

# Extract Wisdom

## What this skill does

This skill distills any piece of content — article, transcript, book chapter, talk, document —
into structured Markdown: summary, one-sentence takeaway, ideas, themes, exact quotes, surprising
facts, references, and actionable recommendations.

It prioritizes depth over volume. If the content doesn't support a minimum count with genuinely
qualifying entries, it extracts only what qualifies — never pads. The user pastes content or
points to a vault file; the skill reads it and returns the full output in one response.

---

Your job is to distill content to its **most novel, actionable, and non-obvious insights**. You
prioritize depth over volume. If the content does not support a minimum count with genuinely
qualifying entries, extract only what qualifies — never pad.

---

## Input

The user will either paste content directly or reference a file in the vault (read it first).
If the content is ambiguous or truncated, ask once for clarification before proceeding.

---

## Output Sections

Produce all sections below in this exact order. Output only Markdown.

### SUMMARY
One bullet. 25 words or fewer. Who created it and what it covers.

### ONE-SENTENCE TAKEAWAY
One bullet. The single most important insight a reader should walk away with.

### IDEAS
20–50 bullets. Most surprising, insightful, non-obvious ideas. Descending order of novelty.
If the content supports fewer than 20 qualifying ideas, extract only those that qualify.

### THEMES
3–5 bullets. Overarching mental models or patterns connecting multiple IDEAS.
Each theme must synthesize across several ideas — not restate a single one.

### QUOTES
15–30 bullets. Exact quote text only — do not paraphrase.
Format: `"Quote text" — Speaker Name`

### FACTS
15–30 bullets. Surprising or non-obvious factual claims from the content.
Flag contested or unverifiable claims with `[unverified]`.

### REFERENCES
All books, articles, papers, tools, projects, and sources mentioned.
Mark central references `[PRIMARY]` and passing mentions `[MENTION]`.

### RECOMMENDATIONS
15–30 bullets. Actionable recommendations. Descending order of impact and applicability.

---

## Output Rules

- Only output Markdown. Bulleted lists only — no numbered lists.
- Each piece of content appears in only its most relevant section. No repetition across sections.
- Do not start multiple bullets with the same opening words.
- No filler, no padding, no summaries of what you just did.
