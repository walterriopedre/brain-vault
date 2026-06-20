# Knowledge Layer

The vault has a persistent knowledge layer at `knowledge/`. It sits between raw operational
records and synthesized understanding — the team's accumulated expertise, not just activity logs.

## Four page types

| Type | Folder | One page per… |
|---|---|---|
| System | `knowledge/systems/` | Logical system, process, or tool the team owns or operates |
| Decision | `knowledge/decisions/` | Key choice made (ADR format) |
| Solution | `knowledge/solutions/` | Resolved problem, synthesized by symptom |
| Concept | `knowledge/concepts/` | Hard-won understanding beyond the docs |

**Rule:** only create a `concepts/` page if the content goes beyond what standard documentation
says — team-specific behavior, gotchas, and things that actually bit you. For generic concepts,
link to external docs instead.

## Navigation files

- `knowledge/index.md` — catalog of all knowledge pages. **Read this first** on any query,
  then drill into relevant pages. Update it whenever a page is created or deleted.
- `knowledge/log.md` — append-only activity log. Append an entry after every ingest,
  filed answer, or lint pass.

## Workflows

### On ingest (processing inbox items)
1. Read the source.
2. Decide which knowledge type(s) it feeds.
3. Create or update the relevant `knowledge/` page(s).
4. Update `knowledge/index.md`.
5. Append to `knowledge/log.md`.
6. Add a wikilink back from the inbox source to every knowledge page it fed.

### On resolving a problem
1. Create a `knowledge/solutions/` page: symptom, root cause, fix, prevention.
2. Link from the work-log entry to the solution page.
3. Update `knowledge/index.md` and `knowledge/log.md`.

### On completing a project
1. Create a `knowledge/systems/` page if the project produced a new system or process.
2. Create `knowledge/decisions/` pages for key choices made.
3. Update `knowledge/index.md` and `knowledge/log.md`.

### Lint (on request or periodically)
- Knowledge pages missing `description:` or `timestamp:` frontmatter fields.
- Inter-knowledge links using `[[wikilinks]]` instead of standard markdown (hybrid rule violation).
- `knowledge/index.md` entries pointing to deleted pages.
- Systems with stale `last_reviewed` dates (> 90 days).

## OKF compatibility

The `knowledge/` directory is the vault's [Open Knowledge Format (OKF) bundle](https://github.com/GoogleCloudPlatform/knowledge-catalog/blob/main/okf/SPEC.md). Knowledge pages use a **hybrid link format**.

**The rule:**
- Links that stay within `knowledge/` → standard markdown: `[Display](/knowledge/type/page.md)`
- Links that exit `knowledge/` (people in `crm/`, projects, runbooks, work-logs) → Obsidian wikilinks: `[[path|Display]]`

**Required frontmatter fields (all knowledge pages):**
- `type:` — `system` | `decision` | `solution` | `concept`
- `description:` — one sentence, used by index generators and search
- `timestamp: YYYY-MM-DDT00:00:00Z` — ISO 8601 creation date

Systems additionally keep `last_reviewed:` (tracks ongoing review). Concepts keep `last_updated:`.
