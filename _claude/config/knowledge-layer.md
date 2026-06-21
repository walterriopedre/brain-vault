# Knowledge Layer

The vault has a persistent knowledge layer at `shared/knowledge/`. It sits between raw notes,
operational records, and synthesized understanding: durable expertise, not just activity logs.

## Four page types

| Type | Folder | One page per… |
|---|---|---|
| System | `shared/knowledge/systems/` | Logical system, process, or tool the vault owner understands or operates |
| Decision | `shared/knowledge/decisions/` | Key choice made (ADR format) |
| Solution | `shared/knowledge/solutions/` | Resolved problem, synthesized by symptom |
| Concept | `shared/knowledge/concepts/` | Hard-won understanding beyond the docs |

**Rule:** only create a `concepts/` page if the content goes beyond what standard documentation
says — local behavior, gotchas, and things that actually bit you. For generic concepts,
link to external docs instead.

## Navigation files

- `shared/knowledge/index.md` — catalog of all knowledge pages. **Read this first** on any query,
  then drill into relevant pages. Update it whenever a page is created or deleted.
- `shared/knowledge/log.md` — append-only activity log. Append an entry after every ingest,
  filed answer, or lint pass.

## Workflows

### On RAW capture ingest
1. Read `business/runbooks/process-raw-captures.md`.
2. Preserve the source under `RAW/`; do not replace the raw capture with a summary.
3. Classify the source: article, YouTube capture, audio message, PDF/document, note, or unknown.
4. Transcribe or extract text before synthesizing audio, video, or binary documents.
5. Decide whether the capture adds durable knowledge or only operational follow-up.
6. Create or update the smallest useful `shared/knowledge/` page(s).
7. Update `shared/knowledge/index.md`.
8. Append to `shared/knowledge/log.md`.
9. Link the raw capture or companion processing note to every knowledge page it fed.

### On ingest (processing inbox items)
1. Read the source.
2. Decide which knowledge type(s) it feeds.
3. Create or update the relevant `shared/knowledge/` page(s).
4. Update `shared/knowledge/index.md`.
5. Append to `shared/knowledge/log.md`.
6. Add a wikilink back from the `business/inbox/` source to every knowledge page it fed.

### On resolving a problem
1. Create a `shared/knowledge/solutions/` page: symptom, root cause, fix, prevention.
2. Link from the work-log entry to the solution page.
3. Update `shared/knowledge/index.md` and `shared/knowledge/log.md`.

### On completing a project
1. Create a `shared/knowledge/systems/` page if the project produced a new system or process.
2. Create `shared/knowledge/decisions/` pages for key choices made.
3. Update `shared/knowledge/index.md` and `shared/knowledge/log.md`.

### Lint (on request or periodically)
- Knowledge pages missing `description:` or `timestamp:` frontmatter fields.
- Inter-knowledge links using Obsidian-style wikilinks instead of standard markdown (hybrid rule violation).
- `shared/knowledge/index.md` entries pointing to deleted pages.
- Systems with stale `last_reviewed` dates (> 90 days).

## OKF compatibility

The `shared/knowledge/` directory is the vault's [Open Knowledge Format (OKF) bundle](https://github.com/GoogleCloudPlatform/knowledge-catalog/blob/main/okf/SPEC.md). Knowledge pages use a **hybrid link format**.

**The rule:**
- Links that stay within `shared/knowledge/` → standard markdown, using a real page path such as `shared/knowledge/<type>/<page>.md`.
- Links that exit `shared/knowledge/` (people, organizations, projects, runbooks, work-logs) → Obsidian wikilinks, using a real vault path and display label.

**Required frontmatter fields (all knowledge pages):**
- `type:` — `system` | `decision` | `solution` | `concept`
- `description:` — one sentence, used by index generators and search
- `timestamp: YYYY-MM-DDT00:00:00Z` — ISO 8601 creation date

Systems additionally keep `last_reviewed:` (tracks ongoing review). Concepts keep `last_updated:`.
