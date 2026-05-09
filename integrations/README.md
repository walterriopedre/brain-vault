# Optional Integrations

These integrations are optional. The vault should still be useful without any of them.

## Supported workflow types

- Journal import from external tools such as Day One
- Meeting transcript ingestion from tools such as Krisp
- Task and project synchronization with tools such as Linear
- Source ingestion from bookmarks, web pages, videos, PDFs, or exported notes
- Scheduled maintenance with cron jobs
- Local automation through scripts
- External orchestration through a runtime such as OpenClaw

## Recommendation

Document integrations as optional modules:
- what problem they solve
- what data they touch
- whether they can be done manually
- whether they can be automated
- what setup they require

## Important rule

Do not make the core vault depend on one external tool.

Examples:
- Journaling should work manually even if Day One is not connected.
- Meeting notes should work manually even if Krisp is not connected.
- Task tracking should work in the vault even if Linear is not connected.
- The system should still function if no cron jobs are installed.
