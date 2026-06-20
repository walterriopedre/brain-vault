---
title: Sample Decision
type: decision
date: 2099-01-01
status: accepted
tags: [example]
---

# Sample Decision

## Context

The example vault needs one obvious place for reusable templates.

## Decision

Use `templates/` for public-facing templates and keep `_templates/` for legacy AI compatibility.

## Consequences

- New users see the simpler `templates/` path.
- Existing Claude Code workflows can continue using `_templates/`.
