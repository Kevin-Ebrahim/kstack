---
name: polish
description: "Apply a final quality pass to an existing interface, fixing scoped interaction, visual, content, and state inconsistencies without redesigning it."
---

# Polish

Refine an existing feature to its requested quality bar. Preserve its identity, truthful content, product behavior, and named boundaries. A critique-only request remains a review.

## Establish the baseline

Read relevant design documentation, tokens, shared components, neighboring flows, and any existing findings. Verify that prior findings still describe the current code and interface before acting on them. Inspect the complete user path at representative sizes and states.

Classify each issue: missing reusable token, one-off implementation, flow mismatch, or local defect. Fix it at the narrowest correct level; do not invent a broad abstraction for a single exception.

## Work in priority order

1. Blocked tasks, data loss, misleading state, and inaccessible paths.
2. Missing loading, empty, error, success, disabled, and permission states.
3. Flow, hierarchy, responsive behavior, and design-system inconsistencies.
4. Type, spacing, color, imagery, icon, and motion details.
5. Dead code and assets made obsolete by this pass.

Keep terminology and behavior aligned with neighboring features. Group related content, preserve a clear primary task, and check optical alignment in the render. Use semantic colors, correct image dimensions, appropriate alt text, visible focus, useful labels, and interruptible motion. Do not add animation just to make the work visible.

Check long, missing, translated, slow, offline, and permission-limited content where the product encounters it. Preserve verified claims; a copy cleanup must not invent evidence or change meaning.

## Verify and finish

Walk the full path again with available relevant input methods. Check narrow, intermediate, and wide layouts; content extremes; zoom and focus; console errors; image/font loading; and visual agreement with the existing system. Run proportionate project checks.

Review the source diff for accidental churn and temporary artifacts. Report fixes and remaining gaps, including any underlying design problem that needs a separate decision. Do not claim a feature is ready merely because a detector is clean, and do not publish or commit as a side effect of polish.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/polish.md) (Paul Bakaus, Apache-2.0). Modified for this library; see [adaptations](../../adaptations.md).
