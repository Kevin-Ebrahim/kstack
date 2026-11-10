---
name: blast-radius
description: "Investigate what a change could break beyond its diff and test the assumptions on which its safety depends."
disable-model-invocation: true
---

# Blast radius

Assess the named change or the relevant working diff. Keep the review within scope.

1. Establish the intended behavior and contracts being changed.
2. Trace callers and consumers beyond symbol references: serialization, database schemas, other processes or languages, lifecycle order, feature flags, configuration, and pinned dependency behavior.
3. Identify the one or two assumptions most important to safety. Check their actual implementation and version.
4. Test those assumptions with the cheapest meaningful check: a targeted existing test, temporary script against real code, or live reproduction in an authorized environment. Respect a read-only request; report a proposed check when executing it would exceed permission.
5. Separate confirmed breakage, cleared concerns, and material unverified risks. Give a location, failure path, impact, and evidence. Do not invent numerical likelihoods.

An extra independent review is optional when available and authorized. The current agent can perform the complete review without arena or particular models.

Report what changes, the key safety assumption and its evidence level, confirmed risks, cleared concerns, and any useful pre-merge check. Mark assumptions unproven when they could not be tested.
