---
name: architect
description: "Sketch types, interfaces, and module boundaries before a substantial change; implement only when the request includes implementation."
disable-model-invocation: true
---

# Architect

Shape the design around the caller's needs before filling in implementation. Scale the exercise to the decision.

## Ground

Read the affected code, requirements, repository instructions, tests, and existing public contracts. Use [how](../how/SKILL.md) for unfamiliar runtime behavior and [why](../why/SKILL.md) when historical constraints matter. Reuse established context rather than rerunning an investigation.

## Sketch

Write realistic caller usage first, then derive types, signatures, ownership, and module boundaries. Use pseudocode or non-executable sketches until production edits are requested. Compare structurally different candidates when a material design choice is open; do not manufacture alternatives to a constrained mechanical change.

Check candidates against [design red flags](references/design-red-flags.md). Prefer a small interface that hides meaningful complexity, with one owner per invariant. Record tradeoffs using the [rationale template](references/rationale-template.md), scaled to the task.

Work in the current agent by default. Optional independent perspectives may help a broad design when delegation is available and authorized; no model family or external arena is required.

## Deliver or implement

A design-only request ends with the proposed shape, alternatives, risks, and next implementation step. If the request includes implementation, proceed within its authorized scope unless the user requested a design checkpoint or a material product decision remains unresolved.

Implement in verifiable increments. Repeated workarounds, contradictory ownership, or unsafe type escapes are evidence that the sketch needs revision. Revisit the relevant assumption, preserve useful work, and propose a scoped redesign; do not discard unrelated edits.

Report the chosen design, why it fits, what changed if implemented, and the evidence and remaining limits.
