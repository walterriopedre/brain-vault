# AI Tool Adapters

The system should remain independent of the assistant used to operate it.

## Rule

Tool-specific config files should be thin adapters only. They should point into the vault's installed operating layer rather than restating workflow rules.

## Recommended startup packet

- `CONTEXT.md`
- `ops/INDEX.md`
- the relevant project context when working inside a project

## Generic adapter prompt

```text
You are operating a local-first knowledge vault.
Read CONTEXT.md and ops/INDEX.md first.
Use the existing folder structure and templates.
Prefer additive, non-destructive changes.
Treat the vault as the durable source of truth, not hidden tool memory.
```
