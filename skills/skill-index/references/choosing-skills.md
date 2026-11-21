# Choosing skills

Use this guide when several skills fit. Read the selected skill before applying it.

## Pick the right kind of review

| The user needs | Primary choice | Distinction |
| --- | --- | --- |
| Defects in a code diff | [code-review](../../code-review/SKILL.md) | Requirements and repository standards. |
| Findings pinned to PR lines | [inline-pr-review](../../inline-pr-review/SKILL.md) | Runs code-review first, then saves or updates a pending inline review. |
| Consequences outside that diff | [blast-radius](../../blast-radius/SKILL.md) | A specific compatibility or safety assumption. |
| Adversarial scrutiny of a design/change | [interrogate](../../interrogate/SKILL.md) | Demonstrable counterexamples and failure paths. |
| UX and visual judgment | `$impeccable critique` | Hierarchy, clarity, composition, and the user journey. |
| Technical web UI quality | `$impeccable audit` | Accessibility, responsive behavior, performance, and implementation evidence. |
| Security boundaries or dependencies | [security-review](../../security-review/SKILL.md) | Attacker control, enforcement, exposure, and measured dependency risk. |
| Motion quality | `$review-animations` (Emil) | Timing, easing, purpose, and interaction feel. |

Choose the review that fits the target and the evidence the user needs. Ask a focused question if the answer would change which review to run.

## Distinguish planning, explanation, and execution

- [grill](../../grill/SKILL.md) interviews the user about open decisions. [interrogate](../../interrogate/SKILL.md) looks for failures it can demonstrate in an existing plan or change.
- `$impeccable shape` plans the user experience. [architect](../../architect/SKILL.md) plans the code structure. Use both only when both decisions remain open.
- [plan-eng-review](../../plan-eng-review/SKILL.md) reviews a proposed engineering plan before implementation.
- `$mattpocock-skills:improve-codebase-architecture` presents candidates for deepening existing modules in an HTML report.
- [how](../../how/SKILL.md) explains behavior. [why](../../why/SKILL.md) investigates the reasons behind a decision. [teach](../../teach/SKILL.md) combines the two when an explanation needs both.
- `$impeccable init` writes `PRODUCT.md`. `$impeccable document` records the project's design system in `DESIGN.md`.
- [figure-it-out](../../figure-it-out/SKILL.md) supplies a workflow for substantial work with no narrower match. Task size alone is not a reason to add it to another complete workflow.

## Choose a UI workflow

Use `$impeccable harden` to fix fragile UI states. Use Emil's `$break-ui` to find states that break with realistic data. [Impeccable setup](../../../docs/setup.md#impeccable) · [Emil's library setup](../../../docs/setup.md#emil-kowalski)

## Distinguish motion tasks

These skills come from Emil Kowalski's library. [Install the library](../../../docs/setup.md#emil-kowalski)

| Request | Selection |
| --- | --- |
| Name an effect. | `$animation-vocabulary` |
| Find places where motion would help. | `$find-animation-opportunities` |
| Plan motion improvements across the app. | `$improve-animations` |
| Build a web transition. | `$animate` |
| Coordinate the panel, icon, and list entrances. | `$choreograph` |
| Make a web sheet track the user's finger. | `$gestures` |
| Build a transition in Expo. | `$animate-expo` |
| Fix a web animation that stutters. | `$animation-performance` |
| Remove motion that slows down an interaction. | `$remove-animations` |

Check where the delay comes from. An unnecessary wait calls for `$remove-animations`. Dropped frames call for `$animation-performance`. Slow page loading calls for `$impeccable optimize`. Use [benchmark-checklist](../../benchmark-checklist/SKILL.md) to check the measurement.

## Useful combinations

Use the steps that fit the request. Start editing when the user asks for implementation.

| Task | Useful sequence |
| --- | --- |
| Build a feature with open design and architecture decisions | Use `$impeccable shape` for the interface and `$architect` for the code. Use `$code-review` after implementation if the user requests a review. |
| Improve an interface after a requested assessment | Start with `$impeccable critique` or `$impeccable audit`. Choose an editing command that fits the findings. Use `$impeccable polish` for a final pass if needed. |
| Fix a difficult bug | Use `$mattpocock-skills:diagnosing-bugs` to investigate and verify the fix. |
| Prevent a recurring mistake | Confirm the cause, then use `$correct` to add a check or change the code so the mistake is harder to repeat. |
| Implement approved motion improvements | Use `$improve-animations` if you need a plan. Then choose `$animate`, `$choreograph`, or `$gestures` for the change. |
| Improve measured web performance | Use `$benchmark-checklist` to check the measurement. Then choose `$impeccable optimize` or, for dropped frames, `$animation-performance`. |
| Investigate a protocol or flow with difficult state invariants | Use `$statechart` when formal modeling fits and its tools are available. Check any counterexamples against the real system. |
| Resume substantial work with another agent | Use `$mattpocock-skills:handoff` to write a handoff for the next session. Use `$ketchup` to bring the current user up to date. |

## Keep selection proportional

For a straightforward edit or a known command, proceed directly. Add a supporting principle when it helps with a concrete decision. For example, use `$principle-make-operations-idempotent` when you need to decide how an operation should behave on retry.

Name the job each skill will do. For example, use `$impeccable audit` to check keyboard access, then use `$impeccable harden` to fix confirmed problems if requested.
