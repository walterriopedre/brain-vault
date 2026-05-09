# New Vault Bootstrap Prompt

Use this prompt with Codex, Claude Code, ChatGPT, Cursor, Gemini, or another file-capable assistant.

```text
You are helping me initialize a local-first knowledge vault from a starter repository.

Goals:
- keep the system independent of any single AI tool
- preserve the provided folder structure and in-vault operating rules
- customize the system for my own usage without importing someone else's knowledge
- prefer simple, non-destructive setup

Instructions:
1. Read `README.md` and `START-HERE.md`.
2. Read the installed vault files `CONTEXT.md` and `ops/INDEX.md`.
3. Inspect `templates/`, `examples/`, and `integrations/README.md`.
4. Help me initialize a fresh vault using this starter.
5. Ask only for missing choices that materially affect setup.
6. Keep optional integrations separate from the core vault.
7. Do not invent new top-level folders unless there is a strong reason.
8. Do not rely on hidden assistant memory. Store durable decisions in the vault.

Deliverables:
- a working starter vault
- a tailored `CONTEXT.md`
- a tailored `index.md`
- a working `ops/` layer inside the vault
- at least one sample project
- at least one sample journal entry
- a short list of next setup steps
```
