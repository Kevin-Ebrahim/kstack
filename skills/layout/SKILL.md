---
name: layout
description: "Improve interface spacing, grouping, density, and responsive structure while preserving task order and accessibility."
---

# Layout

Turn product priority into reading order, grouping, and usable space. Diagnose the structural problem before rearranging elements.

## Assess

Inspect representative states and narrow, intermediate, and wide layouts. With detail blurred or reduced, identify the primary element, secondary element, and major groups. Check whether proximity conveys relationships or containers merely compensate for weak grouping.

Trace the visual, DOM, keyboard, and assistive-technology order. Examine long content, empty states, overlays, sticky elements, zoom, localization, and input methods. Record actual source or rendered evidence; use available layout checks without requiring a proprietary detector.

## Choose and apply the structure

State the primary reading or task path, relationships that should group or separate, desired density, and how the structure changes as space becomes constrained.

- Use the simplest grid, flex, or native layout model that expresses those relationships.
- Reuse the project's spacing scale and semantic container roles; do not impose a new fixed base unit.
- Create rhythm through purposeful tight and generous intervals. Repetition helps recognition; vary it when priority or content changes.
- Use proximity and alignment before adding decorative containers. Keep boundaries where they communicate state or ownership.
- Adapt by reflowing, wrapping, collapsing, or changing navigation where the content requires it. Keep reading and focus order coherent.
- Account for component container size, safe areas, keyboard appearance, and both coarse and fine pointers.
- Make optical corrections after seeing the rendered result.

## Verify

Walk the primary task at supported sizes and with keyboard input. Check overflow, sticky occlusion, content extremes, zoom, and usable targets. A device-sized screenshot verifies layout, not touch behavior. Keep the existing brand and unrelated sections intact; report any unavailable device or interaction checks.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/layout.md) (Paul Bakaus, Apache-2.0). Modified for this library; see [adaptations](../../adaptations.md).
