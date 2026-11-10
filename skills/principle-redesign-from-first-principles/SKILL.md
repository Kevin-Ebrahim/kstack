---
name: principle-redesign-from-first-principles
description: "Reconsider a design around new constraints, then choose the smallest coherent change that meets the authorized requirement."
disable-model-invocation: true
---

# Redesign from first principles

When a new requirement creates repeated friction, ask what design would fit if the requirement had been known from the start.

Read affected behavior, types, consumers, and constraints. Compare a coherent redesign with a localized change, accounting for compatibility, migration cost, and the user's scope.

Use the comparison to make a better decision; it does not automatically authorize a rewrite. Implement the smallest coherent solution within scope. Propose broader work separately when the benefit warrants it.

Deliver an approved redesign incrementally, keeping each step verifiable and updating affected interfaces, tests, documentation, and examples. Preserve unrelated edits and behavior.
