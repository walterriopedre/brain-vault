---
title: Process RAW Captures
owner: vault operator
last_reviewed: 2026-06-21
status: active
tags: [raw, ingest, knowledge, obsidian]
---

# Process RAW Captures

Use this runbook when files arrive in `RAW/` from Obsidian Web Clipper, manual saves, audio
messages, downloaded PDFs, transcripts, or other capture tools.

## Purpose

Turn raw source material into durable vault knowledge without losing provenance or inventing facts.

## Inputs

- Files under `RAW/`.
- Existing knowledge index at `shared/knowledge/index.md`.
- Existing runbooks and gotchas when relevant.

## Routing

| Raw input | How to process |
|-----------|----------------|
| Article or webpage clipped to Markdown | Extract the argument, key facts, quotes, references, and durable ideas. Create or update `shared/knowledge/concepts/`, `shared/knowledge/systems/`, `shared/knowledge/decisions/`, or `shared/knowledge/solutions/` only when the capture adds reusable knowledge. |
| YouTube page clipped with transcript or notes | Treat it like an article if a transcript is present. If only metadata is present, capture the source and ask for a transcript or use an approved transcript tool before synthesizing. |
| Audio message (`.m4a`, `.mp3`, `.wav`, `.ogg`, etc.) | Transcribe first with an approved local or connected transcription tool. Then process the transcript by intent: task, project note, meeting note, or knowledge page. If transcription is unavailable, create an open task to transcribe it and do not summarize from filename alone. |
| PDF or document | Extract text first. If text extraction fails, note the failure and create a task for manual review. Process extracted content using the same article/document rules. |
| Plain note or pasted thought | Decide whether it is operational (`business/inbox/`, tasks, projects, meetings) or durable knowledge (`shared/knowledge/`). |
| Unknown or mixed file | Inspect metadata and contents. If the audience, source, or sensitivity is unclear, ask before filing. |

## Steps

1. List new or unprocessed files in `RAW/`.
2. Read `shared/knowledge/index.md` before creating knowledge pages.
3. Read `shared/gotchas.md` for prior ingest or source-processing warnings.
4. Identify the source type: article, YouTube capture, audio, PDF/document, note, or unknown.
5. Preserve the raw source. Do not replace the captured file with a summary.
6. Extract only supported claims: source title, author/channel if present, URL if present,
   publication date if present, capture date, core argument, facts, quotes, and references.
7. Decide the destination:
   - `shared/knowledge/concepts/` for durable ideas and mental models.
   - `shared/knowledge/systems/` for tools, processes, or operating systems.
   - `shared/knowledge/decisions/` for recorded choices and rationale.
   - `shared/knowledge/solutions/` for a resolved problem with symptom, root cause, fix, and prevention.
   - `business/inbox/`, `business/tasks/`, `business/projects/`, or `business/meetings/` for operational material.
8. Create or update the smallest useful knowledge page. Prefer updating an existing page when the
   capture refines a known concept.
9. Add source provenance to the generated note: raw file path, source URL if present, author/channel
   if present, and capture date.
10. Update `shared/knowledge/index.md` when knowledge pages are created or renamed.
11. Append an ingest entry to `shared/knowledge/log.md`.
12. Mark the raw file as processed by adding a short `## Processing` section at the end of Markdown
    captures, or by creating a companion note for binary files when the raw file cannot be edited.

## Quality Bar

- Do not create a knowledge page for every capture. Some captures only deserve a short note, a task,
  or no action.
- Do not invent missing author names, publication dates, transcript content, citations, or conclusions.
- Keep direct quotes short and attributable.
- Preserve contradictions. If a capture conflicts with existing knowledge, note the contradiction
  instead of silently overwriting the older page.
- Keep public-template examples fake. Real captures belong only in private clones with the right access.

## Validation

Before closing the ingest, confirm:

- The raw source still exists under `RAW/`.
- Any created knowledge page has required frontmatter.
- `shared/knowledge/index.md` links to new knowledge pages.
- `shared/knowledge/log.md` has an ingest entry.
- The raw capture or companion processing note links to the generated knowledge page.

## Change Log

| Date | What changed |
|------|--------------|
| 2026-06-21 | Added RAW capture processing workflow. |
