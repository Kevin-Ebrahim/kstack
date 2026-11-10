---
name: principle-fix-root-causes
description: "Trace a failure to the first incorrect behavior and fix it within scope, preserving legitimate guards and documented workarounds."
disable-model-invocation: true
---

# Fix root causes

Trace the observed failure back to the first incorrect decision or missing handling. Reproduce when practical; otherwise distinguish evidence from hypotheses and gather the next discriminating observation.

Ask whether the triggering state is legitimate. If it can occur, handling it where the contract requires is a real fix. If it should be impossible, investigate its producer rather than hiding the consequence.

Use actual errors, state, and targeted instrumentation. For restart-only bugs, inspect persisted configuration, caches, locks, and serialized state. Check related instances to understand the class, but repair only the authorized scope and report additional affected areas.

Guards, retries, and compatibility workarounds can be necessary. Preserve them until their protecting condition is removed or proven obsolete. Keep comments that explain non-obvious rationale.

Verify the original failure path and relevant nearby behavior. When a hard-to-find fact would benefit future debugging, propose a proportionate diagnostic signal.
