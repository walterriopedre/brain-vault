# RAW Capture Processing

`RAW/` is the vault landing zone for source captures. Obsidian Web Clipper and similar tools
should save articles, YouTube captures, PDFs, audio messages, transcripts, and pasted source
material there.

## Relationship to inbox

- `RAW/` is for captured source evidence.
- `business/inbox/` is for operational inputs that need triage: tasks, requests, meeting notes,
  project updates, business decisions, and follow-ups.
- A raw capture may produce an operational item, but the source itself stays in `RAW/`.

## Session-start check

When doing a normal vault scan, count files in `RAW/` and flag real unprocessed captures older
than 7 days. Ignore `.gitkeep` and this folder's `README.md`.

## Processing rule

Before processing `RAW/`, read:

1. `business/runbooks/process-raw-captures.md`
2. `shared/knowledge/index.md`
3. `shared/gotchas.md`

Then classify the item:

- Article or clipped webpage.
- YouTube capture with transcript or notes.
- Audio message.
- PDF or document.
- Plain note.
- Unknown or mixed source.

Process according to the runbook. Preserve the raw file, create or update the smallest useful
destination note, and log knowledge ingests in `shared/knowledge/log.md`.

## Audio rule

For audio files, transcribe first. If no approved transcription tool is available, create an
open task to transcribe the file and do not infer content from the filename or metadata.

## Wiki rule

The Brain Vault wiki is `shared/knowledge/`. Do not create a separate `wiki/` folder unless the
vault owner explicitly chooses that older layout. Article and YouTube captures should feed
`shared/knowledge/` only when they add durable, reusable knowledge.
