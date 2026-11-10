---
name: principle-boundary-discipline
description: "Concentrate external-data validation at trust boundaries and rely on established internal invariants without redundant checks."
disable-model-invocation: true
---

# Boundary discipline

Validate and translate external input where it enters the system: CLI arguments, configuration, persistence, network messages, and external APIs. Return useful errors there.

Inside a boundary, rely on invariants that have actually been established and preserved. A type annotation alone does not validate untrusted data. Revalidate when data crosses a new trust boundary, can be mutated outside the invariant, or comes from an unchecked integration.

Keep general business logic separate from framework wiring when that makes ownership and testing clearer. Pure functions are useful where they fit; do not force extraction that hides stateful behavior or scatters a cohesive operation.

Expose domain concepts rather than unnecessarily leaking transport or storage representations. Before removing a guard, establish what enforces its invariant and test the affected failure path. Do not remove safety checks solely because they are inside a module.
