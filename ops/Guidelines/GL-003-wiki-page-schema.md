# GL-003 — Wiki Page Schema

**Type:** Static reference rule

---

## Required frontmatter

Every `wiki/summaries/`, `wiki/concepts/`, and `wiki/topics/` page must have:

```yaml
---
tags: []
source: ""
date: YYYY-MM-DD
related: []
last_verified: YYYY-MM-DD
confidence: high
superseded_by: ""
contradicts: ""
---
```

## Required body structure

The first body element must be a TL;DR blockquote:

```markdown
> TL;DR: [1-2 sentence summary]

# Title
```

## Contradiction protocol

1. Add `contradicts:` to the older page when a conflict exists
2. Keep both pages
3. Add `superseded_by:` when the newer claim is clearly stronger
4. Surface the conflict to [vault-owner]
5. Never silently overwrite a conflicting claim
