---
name: adapt
description: "Adapt an existing interface to requested screens, containers, input methods, or output contexts while preserving its core tasks and identity."
---

# Adapt

Adapt the experience to its target context rather than shrinking the same layout. Establish the supported devices or output medium, important tasks, content priorities, and existing design conventions.

## Choose what changes

Inspect available width and height, input methods, density, navigation, network/device limits, and accessibility requirements. A touchscreen laptop and a keyboard-equipped tablet show why viewport width alone cannot determine interaction.

- On narrow screens, preserve the primary task and essential information while reflowing secondary regions or using discoverable disclosure.
- At intermediate widths, examine partial wrapping, awkward empty columns, overlays, and navigation transitions.
- On wide screens, use space for meaningful comparison or context instead of stretching prose without limit.
- For print, prioritize content order, pagination, readable output, and usable URLs; remove interactive chrome only where unnecessary.
- For email, inspect target client constraints and use an appropriate email implementation rather than assuming web CSS behavior.
- For native platforms, use the platform's layout, scaling, navigation, and input conventions. Web responsive examples are not native API guidance.

Keep transformations task-specific. Do not automatically turn every table into cards or hide important information. Choose breakpoints where content or interaction actually fails and preserve coherent reading and focus order.

## Implement

Use existing layout primitives, flexible sizing, container-aware components where supported, and semantic spacing roles. Account for safe areas, soft keyboards, zoom, localization, and both pointer and hover capabilities. Keep essential functions available without hover.

For web work, consult [responsive examples](references/responsive.md) when handling input queries, safe-area insets, or responsive images. Treat snippets as examples to adapt to the target's behavior and browser support.

## Verify

Inspect narrow, intermediate, and wide states and test meaningful transitions between them. Exercise keyboard and available touch input, navigation, overlays, long content, and zoom. Report precisely which environments were exercised; emulation does not establish real-device performance or touch reliability. Compare the adapted result with the original task and brand intent.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/adapt.md) (Paul Bakaus, Apache-2.0). Modified for this library; see [adaptations](../../adaptations.md).
