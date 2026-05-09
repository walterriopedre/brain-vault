# System Architecture (Repo Note)

The canonical operating-system file for an installed vault now lives at `ops/SYSTEM-ARCHITECTURE.md`.

Use this repo-level file only as packaging guidance:

- the starter repo ships an installable `ops/` layer
- `bootstrap/install.sh` copies that layer into a new vault
- tool config files should point to `CONTEXT.md` and `ops/INDEX.md`

Read `ops/SYSTEM-ARCHITECTURE.md` for the actual operating rules.
