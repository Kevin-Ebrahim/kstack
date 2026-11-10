---
name: correct
description: "Turn demonstrated recurring mistakes into proportionate structural checks, types, lint rules, or behavioral tests within the requested scope."
disable-model-invocation: true
---

# Correct

Prevent a demonstrated class of recurring mistakes. A correction to one response is not automatic authorization for a repository-wide redesign.

Read the user's correction and relevant history, reviews, tests, and instructions. Group actual repeat examples and state the evidence. If recurrence is not established, fix the current problem and distinguish any broader proposal.

Prefer the highest-value enforcement the scope supports:

1. Simplify ownership or remove a genuinely redundant path when that eliminates the error.
2. Express an invariant in types or a targeted validation/lint check with an actionable message.
3. Add a behavioral regression test at a useful seam.
4. Document judgment calls that cannot reasonably be enforced.

Do not add architecture solely to avoid writing a clear instruction. Preserve legitimate exceptions and public contracts. Make changes only to the demonstrated class and authorized area.

Show that the enforcement rejects a representative bad case and accepts valid behavior. Do not weaken an unrelated test. Update existing repository guidance when the change makes it inaccurate; create a rule table only if the repository uses or requests one. Commits and exception approvals follow the user's workflow, not a fixed per-class ritual.

Report each class, the evidence, chosen enforcement, validation, and remaining limits.
