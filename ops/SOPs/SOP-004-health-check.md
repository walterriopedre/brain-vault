# SOP-004 — Vault Health Check

**Owner:** [your-assistant]
**Trigger:** Periodic health check requested, or after a bulk ingest or major structural changes

---

## Steps

1. Scan wiki pages for contradictions, stale claims, orphan pages, and missing cross-references
2. Flag pages where `last_verified` is more than 90 days old
3. Flag pages with `confidence: low` that have no staged review
4. Check contacts for journal mentions that are not yet backlinked
5. If the Obsidian CLI is available, use it for orphan and unresolved-link checks
6. Compile findings into a report and never silently resolve contradictions
7. Propose fixes for [vault-owner]'s review
8. Execute fixes only after approval
9. Append to `log.md`: `## [YYYY-MM-DD] lint | health check`
