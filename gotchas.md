# Gotchas

Append-only log of failures, dead ends, surprises, and hard-won workarounds.
Read before attempting anything that has gone wrong before. Write immediately when something goes wrong — not at session end.

**The bar for an entry:** "Would a teammate want to know this before trying the same thing again?"
If yes, it goes here.

---

## Format

```markdown
## [YYYY-MM-DD] [tag1] [tag2] — Short title

**What happened:** [One sentence describing what you were trying to do and what went wrong.]

**Root cause:** [Why it happened — the non-obvious constraint, the undocumented behavior, the hidden dependency.]

**Workaround / fix:** [What actually worked, or what to do instead.]

**Do not:** [The thing that seems like it should work but doesn't — so the next person doesn't try it.]
```

Tags should match the system, technology, or domain — so a future targeted check finds this entry.
Examples: `[azure]` `[git]` `[python]` `[onboarding]` `[contracts]` `[excel]` `[sharepoint]`

---

*(Entries begin below — prepend new entries above this line)*
