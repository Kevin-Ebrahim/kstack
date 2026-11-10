---
name: overdrive
description: "Build ambitious browser effects or unusually responsive interactions when explicitly requested, with measured performance and usable fallbacks."
---

# Overdrive

Choose technical ambition that improves this interface's existing purpose. A creative surface may benefit from a shader; a dense tool may benefit more from fluid navigation or responsive large-data interaction.

## Set the direction

Use a concrete direction already supplied by the user. If the request leaves materially different outcomes open, describe two or three options with appearance, complexity, performance, and fallback tradeoffs, then resolve that choice before substantial implementation. Do not reopen a settled decision.

Keep the target and existing product capabilities clear. Real-time collaboration, new backend services, or offline data guarantees are separate product changes, not implied by a request for impressive UI.

## Choose a technique

- Shared-element transitions or spring motion for continuity between states.
- Scroll-linked motion when it helps the narrative without trapping scrolling.
- Canvas, WebGL, or WebGPU for rendering that ordinary DOM/CSS cannot handle efficiently.
- Virtualization for large collections; preserve navigation, selection, search, and accessibility behavior.
- Workers or WASM for a demonstrated computation bottleneck, accounting for transfer and startup costs.

Reuse suitable project dependencies first. Check current documentation and support for the target browsers before selecting an API; capability detection must also handle runtime failure, such as an unavailable GPU adapter. A usable static or simpler fallback is required.

## Implement and inspect

- Define a performance budget appropriate to the devices and refresh rates being targeted. Measure frame time and responsiveness rather than promising a frame rate from code alone.
- Initialize expensive resources only when needed, pause hidden work, and release listeners, contexts, workers, and timers.
- Respect reduced motion, keyboard control, and user control of sound. Avoid flashing and motion that blocks reading or task completion.
- Preserve content and core actions when the enhancement is unsupported or disabled.
- Inspect timing, interruption, cancellation, and the final resting state in the browser. Bound iteration to the requested outcome and budget.

Deliver the effect with its tested environments, measured limits, and fallback behavior. For motion fundamentals, use [animate](../animate/SKILL.md); for an observed frame-rate problem, use [animation-performance](../animation-performance/SKILL.md).

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/overdrive.md) (Paul Bakaus, Apache-2.0).
