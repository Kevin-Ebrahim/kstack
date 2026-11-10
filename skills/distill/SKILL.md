---
name: distill
description: "Simplify a cluttered interface by removing redundant presentation and interaction steps while preserving required capabilities."
---

# Distill

Remove obstacles between users and their task. Simplicity is measured by comprehension and task completion, not by the number of visible elements alone.

## Identify what earns its place

Inspect the primary workflow, required information, secondary tasks, and existing constraints. Separate redundant presentation from necessary domain complexity. Find repeated information, competing actions, excessive style variants, nested containers, and avoidable steps.

Explain the smallest useful simplification. A task can have several legitimate user goals; do not force every tool into one action or hide frequently needed controls to satisfy a visual rule.

## Simplify

- Group related information and actions. Use progressive disclosure for infrequent complexity when the entry point remains discoverable.
- Remove repeated copy and decorative wrappers that add no meaning. Avoid decorative microcopy, filler, vague marketing fluff, and unnecessary interface elements. Do not add text merely to make a screen look complete. Keep labels, instructions, feedback, and other copy that helps someone understand or use the interface. Preserve status, warnings, and information needed for decisions.
- Consolidate style variants using the existing type, spacing, and color system. Keep semantic colors and pair them with non-color cues.
- Prefer a straightforward reading path; retain columns, sidebars, and dense structures when they support comparison or frequent work.
- Remove redundant interaction steps while preserving validation, recovery, and necessary safeguards.
- Clean up only code and styles made obsolete by the change, checking their other consumers first.

Do not delete product capabilities or silently change defaults under a presentation cleanup. Surface an actual scope decision when removal would change what users can do.

## Verify

Walk the important tasks before and after, including keyboard use, narrow layout, and realistic content. Confirm that required actions remain available and understandable. Describe what was removed or moved and where any displaced action is now found; do not claim faster completion without measurement.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/distill.md) (Paul Bakaus, Apache-2.0).
