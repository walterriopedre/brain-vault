# GL-002 — Vault Architecture and Routing

**Type:** Static reference rule

---

## Input routing

| Content type | Destination |
|---|---|
| External source | `raw/` + `wiki/summaries/` |
| Video or audio transcript | `raw/videos/` + `wiki/summaries/` |
| External journal import | `raw/<tool-name>/` -> `journal/` |
| Meeting transcript or note | `raw/meetings/` + `meetings/` |
| Personal event or reflection | `journal/` |
| Unclassified capture | `inbox/` |
| Project work or state | `projects/<project>/` |
| Durable idea or framework | `wiki/concepts/` |
| Multi-source synthesis | `wiki/topics/` |

When in doubt, route to `inbox/`.

## Two-speed model

High-churn:
- `journal/`
- `meetings/`
- `wiki/summaries/`
- `projects/*/PROJECT_CONTEXT.md`
- `projects/*/TASKS.md`
- `inbox/`

Low-churn:
- `wiki/concepts/`
- `wiki/topics/`
- `sources/`
- `contacts/`
- `projects/*/DECISIONS.md`
