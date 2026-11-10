---
name: principle-build-the-lever
description: "Build a small reusable tool when repetition or verification makes it more valuable than manual work."
disable-model-invocation: true
---

# Build the lever

Use an existing tool or build a small script when it makes substantial work repeatable, safer, or easier to verify. A codemod, generator, query, or focused check can be more useful than repeated hand edits.

Estimate the benefit against setup and maintenance cost. A direct edit with an adequate existing check is valid even when the task is nontrivial; no new file is required to demonstrate this principle.

For repeated transformations, learn from one representative unit, then compare the tool's result against it. Test relevant edge cases and make reruns safe before applying it broadly. Prefer deterministic processing to delegating mechanical edits.

If delegation is authorized, share a precise recipe and verification contract while keeping write ownership separate. Keep tooling only when it has continuing value or is needed for review; use temporary scripts for disposable checks and respect project artifact rules.

Use [prove-it-works](../principle-prove-it-works/SKILL.md) to check the actual result and [laziness-protocol](../principle-laziness-protocol/SKILL.md) to keep the tool small.
