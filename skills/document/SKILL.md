---
name: document
description: "Capture an existing interface design system in DESIGN.md from observed tokens, components, and rendered behavior; not generic document creation."
---

# Document

Record the design system that actually exists so future screens can follow it. This is documentation, not an implicit redesign or a mandate to invent a visual identity.

## Inspect the existing authority

Read current DESIGN.md or equivalent guidance, token definitions, theme files, global styles, component variants, and representative rendered states. In a multi-app repository, identify which system and document own the target.

Extract actual values and source paths for color roles, typography, spacing, containers, breakpoints, radii, depth, motion, and component states. Keep existing role names and color formats; do not force a Material-style taxonomy or convert values just for aesthetic naming.

Distinguish intentional system rules from one-off implementation choices and drift. Ask only about ambiguity that affects the record, not for a mandatory metaphor, mood phrase, or new palette.

## Write DESIGN.md

Use the [design outline](references/design-outline.md) when helpful. Preserve useful existing content and reconcile stale statements with evidence when an update is requested. Keep unrelated sections intact. Put exact values next to their source or role, and distinguish observation from confirmed design intent.

Optional machine-readable tokens should follow the project's existing schema or an explicitly requested integration. Do not claim compatibility with an external DESIGN.md specification without checking its current requirements. Prose is sufficient when no token consumer is required.

Document supported themes, responsive changes, focus/error/disabled states, and motion preferences where observed. Do not invent missing tokens or treat a flat visual system as unfinished. No `.impeccable/design.json` sidecar or runtime configuration is required.

If there is no implementation or authoritative design reference, explain that the current system cannot yet be extracted. A requested provisional specification may be written from supplied choices with its status clearly marked; otherwise [shape](../shape/SKILL.md) can help settle the design first.

## Verify

Check recorded values against their actual sources and sampled renders, verify local evidence paths, and review the diff for accidental rule changes. Summarize coverage, conflicts, and unknowns. Do not claim a visual inspection occurred when only source files were available.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/document.md) (Paul Bakaus, Apache-2.0).
