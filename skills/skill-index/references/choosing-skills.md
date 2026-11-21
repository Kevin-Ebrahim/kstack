# Choosing skills

Use this guide to resolve overlap or suggest a sequence. Links point to the actual workflows; read those before applying them. Respect their invocation policies and the user's requested scope.

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

Do not run every review because the request says “review.” Infer the target and desired evidence from context. Resolve material ambiguity with a focused question; do not invent a broad audit assignment.

## Distinguish planning, explanation, and execution

- [grill](../../grill/SKILL.md) uncovers unresolved decisions through a requested discovery interview; [interrogate](../../interrogate/SKILL.md) tests a design or change for demonstrable failures.
- `$impeccable shape` plans the user experience; [architect](../../architect/SKILL.md) plans the code structure. Use both only when both decisions remain open.
- [plan-eng-review](../../plan-eng-review/SKILL.md) reviews a proposed engineering plan before implementation.
- `$mattpocock-skills:improve-codebase-architecture` presents candidates for deepening existing modules in an HTML report.
- [how](../../how/SKILL.md) explains behavior; [why](../../why/SKILL.md) investigates historical reasons; [teach](../../teach/SKILL.md) combines them for learning. Do not load all three for a simple explanation.
- `$impeccable init` writes product context. `$impeccable document` records an existing visual system. Neither is general project initialization or generic document production.
- [figure-it-out](../../figure-it-out/SKILL.md) supplies a workflow for substantial work with no narrower match. Task size alone is not a reason to add it to another complete workflow.

## Choose a UI workflow

Use `$impeccable harden` to fix fragile UI states. Use Emil’s `$break-ui` to find those states by exercising the interface with difficult data. [Impeccable setup](../../../docs/setup.md#impeccable) · [Emil’s library setup](../../../docs/setup.md#emil-kowalski)

## Distinguish motion tasks

These skills are available with [Emil Kowalski’s library installed](../../../docs/setup.md#emil-kowalski).

| Request | Selection |
| --- | --- |
| “What is this effect called?” | `$animation-vocabulary` |
| “Where would motion help?” | `$find-animation-opportunities` |
| “Plan improvements to motion across the app.” | `$improve-animations` |
| “Build this web transition.” | `$animate` |
| “Coordinate the panel, icon, and list entrances.” | `$choreograph` |
| “Make this web sheet track my finger.” | `$gestures` |
| “Build this transition in Expo.” | `$animate-expo` |
| “This web animation stutters.” | `$animation-performance` |
| “Remove the motion that gets in the way.” | `$remove-animations` |

“Feels slow” may mean unnecessary delay, dropped frames, or slow data/loading. Inspect the symptom before choosing removal, animation performance, or `$impeccable optimize`. [benchmark-checklist](../../benchmark-checklist/SKILL.md) supports a measured performance claim; it does not implement the optimization.

## Useful combinations

These are conditional sequences, not mandatory pipelines. Omit stages whose decisions are already settled. A transition from advice to edits requires an implementation request; invoke only skills allowed by their policy.

| Task | Useful sequence |
| --- | --- |
| Build a substantial new feature with unsettled UX and architecture | `$impeccable shape` → `architect` → implementation using relevant platform skills → `code-review` when review is in scope. |
| Improve an existing interface after a requested assessment | `$impeccable critique` or `$impeccable audit` → the targeted editing skill → `$impeccable polish` if a final pass is needed. |
| Fix a difficult bug | Use `$mattpocock-skills:diagnosing-bugs` to investigate and verify the fix. |
| Fix a confirmed recurring class of mistakes | Establish the cause → `correct` for proportionate prevention. A one-off mistake does not establish recurrence. |
| Implement approved motion improvements | Emil’s `$improve-animations` when a plan is needed → `$animate`, `$choreograph`, or `$gestures` for the relevant change. |
| Improve measured web performance | `$impeccable optimize` with `benchmark-checklist`; use `animation-performance` when frame rendering is the bottleneck. |
| Investigate a protocol or flow with difficult state invariants | `statechart` when formal modeling is warranted and its tools are available; validate counterexamples against the real system. |
| Resume substantial work with another agent | `$mattpocock-skills:handoff` writes a handoff for the next session. Use `ketchup` for a progress update to the current user. |

## Keep selection proportional

A one-line copy correction, known command, or straightforward local edit usually needs no routing workflow. Select a supporting principle only for a concrete decision: retry behavior suggests `principle-make-operations-idempotent`; uncertain input boundaries suggest `principle-boundary-discipline`; repeated failed fixes suggest `principle-attack-the-premise`.

When recommending, make the fit specific: “Use `$impeccable audit` to check keyboard access and narrow-screen overflow; use `$impeccable harden` afterward if you want the confirmed failures fixed.” Avoid listing adjacent skills merely because they share keywords.
