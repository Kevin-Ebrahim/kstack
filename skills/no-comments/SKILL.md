---
name: no-comments
description: "Review comments for accuracy and usefulness, remove redundant or stale comments, and preserve rationale and important constraints."
disable-model-invocation: true
---

# No comments

Review comments in the named files or diff. The aim is useful, accurate code documentation, not zero comments.

Read each comment with the code and relevant history. Classify it:

- Redundant narration: remove if the code already states the same thing clearly.
- Stale or misleading: verify the intended behavior, then correct or remove.
- Useful rationale, public documentation, license notice, external constraint, or non-obvious invariant: preserve unless evidence establishes it is obsolete.
- Workaround or suppression: establish what it protects before changing it. An unclear reason is grounds to investigate, not to delete.

For review-only requests, report findings with evidence. If cleanup is requested, make the smallest supported edits within scope. Do not alter behavior merely to remove a comment.

When a constraint can cheaply become a type, test, or check, propose that encoding or implement it if already authorized. Retain the comment until the constraint is enforced or shown obsolete. Broader architecture changes are separate work; use [architect](../architect/SKILL.md) only when requested or needed within the agreed scope.

No special reviewer agent is required. Validate any code changes with relevant checks and report what was removed, corrected, preserved, and left unresolved.
