---
name: harden
description: "Make an interface resilient to realistic content extremes, failures, localization, and interrupted interactions within the existing product scope."
---

# Harden

Use realistic adverse conditions to find and fix UI failures. Keep the work focused on the existing feature; this is not a general security audit or permission to add backend capabilities.

## Select relevant stresses

Inspect expected content ranges, supported languages, input methods, permissions, and network behavior. Test empty and very long text, unbroken strings, emoji, large values, many items, failed requests, slow responses, repeated actions, and interrupted work where applicable. Use local fixtures or controlled environments; do not delete live data or submit real transactions to manufacture edge cases.

## Repair behavior

- **Overflow:** allow content-driven sizing and wrapping. Use `min-width: 0` where flex/grid min-content sizing causes overflow. Do not hide overflow indiscriminately or truncate essential information without an accessible way to read it.
- **Localization:** test actual supported translations or pseudo-localized expansion. Use locale-aware dates, numbers, plurals, and logical properties where appropriate. Preserve meaningful Unicode and user-entered text; do not apply blanket normalization. Verify directional icons and mixed-direction text in context.
- **Errors:** preserve user input, explain what failed, and offer a safe recovery path. Display suitable user-facing messages rather than raw backend errors. Keep permission, no-results, empty, and failure states distinct.
- **Concurrency:** handle retries, stale responses, duplicate submissions, and cancellation. An optimistic update needs rollback or reconciliation. Do not add blind retries to non-idempotent actions.
- **Gestures:** handle pointer cancellation, lost capture, release outside the target, competing scroll, extra pointers, and loss of focus. Verify that the next interaction still works.
- **Accessibility:** retain keyboard equivalents, logical focus, accessible names, appropriate announcements, and non-color status cues.
- **Lifecycle:** release listeners, timers, subscriptions, and resources owned by the component; cancel or ignore obsolete work.

Client validation improves feedback; the trusted boundary still owns authorization and data validation. Fix relevant boundary defects only within scope, and avoid creating unnecessary internal guards or changing storage semantics under a UI task.

## Verify

Reproduce each confirmed failure, apply the fix, and repeat the same condition. Add a focused regression when it protects behavior and the project can exercise it meaningfully. Report device/engine/input evidence separately from viewport screenshots and name untested conditions. [break-ui](../break-ui/SKILL.md) offers a broader catalog of stress cases.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/harden.md) (Paul Bakaus, Apache-2.0). Modified for this library; see [adaptations](../../adaptations.md).
