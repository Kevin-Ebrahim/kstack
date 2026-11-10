---
name: onboard
description: "Design or improve first-run flows, contextual guidance, and empty states that help users reach their first meaningful result."
---

# Onboard

Get users to a real first success without teaching every feature in advance. Determine the audience's experience, the task they arrived to do, and the evidence that they reached value.

## Choose the smallest useful intervention

Inspect the existing entry path and where users become uncertain. Prefer clear labels, useful defaults, contextual help, and actionable empty states before introducing a tour. Use observed research or analytics when available; do not invent drop-off statistics.

- Make optional instruction skippable and replayable. Keep genuinely required setup, consent, or safety steps clearly explained.
- Teach unfamiliar concepts at the moment they are needed; standard controls rarely need a tutorial.
- Use realistic examples or clearly labeled sample data. Do not create accounts, invitations, purchases, or external actions during a demonstration without authorization.
- In a multi-step flow, show honest progress and preserve work across interruption where the product supports it.
- Keep returning and expert users out of repeated introductory steps.

## Distinguish empty states

| State | Useful response |
| --- | --- |
| First use | Explain what belongs here and offer a clear first action or sample. |
| Deliberately cleared | Keep it light and make recreation easy. |
| No search results | Preserve the query and offer a way to broaden or clear it. |
| No permission | Explain the constraint and legitimate access route. |
| Failed to load | Identify the failure and provide appropriate recovery. |

Illustrations and extra help are optional; include them only when they clarify the task. Do not disguise a failure as a successful empty state.

## Implement and verify

Reuse accessible project components for popovers, dialogs, and guidance. Preserve focus, dismissal, keyboard paths, and small-screen usability. Respect saved dismissals and completion; scope stored state by account and onboarding version when needed, and handle unavailable storage. Reuse existing analytics conventions rather than adding tracking as a side effect.

Walk first use, skip, replay, partial completion, interruption, returning use, and account switching as relevant. Check that the user can reach actual value and continue afterward. Report usability hypotheses separately from measured completion or research results.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/onboard.md) (Paul Bakaus, Apache-2.0).
