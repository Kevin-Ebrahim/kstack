# Choosing skills

Use this guide to resolve overlap or suggest a sequence. Links point to the actual workflows; read those before applying them. Respect their invocation policies and the user's requested scope.

## Pick the right kind of review

| The user needs | Primary choice | Distinction |
| --- | --- | --- |
| Defects in a code diff | [code-review](../../code-review/SKILL.md) | Requirements and repository standards. |
| Consequences outside that diff | [blast-radius](../../blast-radius/SKILL.md) | A specific compatibility or safety assumption. |
| Adversarial scrutiny of a design/change | [interrogate](../../interrogate/SKILL.md) | Demonstrable counterexamples and failure paths. |
| UX and visual judgment | [critique](../../critique/SKILL.md) | Hierarchy, clarity, composition, and the user journey. |
| Technical web UI quality | [audit](../../audit/SKILL.md) | Accessibility, responsive behavior, performance, and implementation evidence. |
| Security boundaries or dependencies | [security-review](../../security-review/SKILL.md) | Attacker control, enforcement, exposure, and measured dependency risk. |
| Motion quality | [review-animations](../../review-animations/SKILL.md) | Timing, easing, purpose, and interaction feel. |

Do not run every review because the request says “review.” Infer the target and desired evidence from context. Resolve material ambiguity with a focused question; do not invent a broad audit assignment.

## Distinguish planning, explanation, and execution

- [shape](../../shape/SKILL.md) plans the user experience; [architect](../../architect/SKILL.md) plans the code structure. Use both only when both decisions remain open.
- [plan-eng-review](../../plan-eng-review/SKILL.md) reviews a proposed engineering plan before implementation.
- [improve-codebase-architecture](../../improve-codebase-architecture/SKILL.md) finds improvement candidates in existing code. It does not automatically authorize a refactor.
- [how](../../how/SKILL.md) explains behavior; [why](../../why/SKILL.md) investigates historical reasons; [teach](../../teach/SKILL.md) combines them for learning. Do not load all three for a simple explanation.
- [init](../../init/SKILL.md) writes product context. [document](../../document/SKILL.md) records an existing visual system. Neither is general project initialization or generic document production.
- [figure-it-out](../../figure-it-out/SKILL.md) supplies a workflow for substantial work with no narrower match. Task size alone is not a reason to add it to another complete workflow.

## Distinguish UI improvements

- [polish](../../polish/SKILL.md) finishes an existing feature. [bolder](../../bolder/SKILL.md) and [quieter](../../quieter/SKILL.md) change its expressive intensity. [distill](../../distill/SKILL.md) removes unnecessary complexity.
- [typeset](../../typeset/SKILL.md), [layout](../../layout/SKILL.md), and [colorize](../../colorize/SKILL.md) target typography, spatial structure, and color respectively. Choose the actual source of the problem.
- [adapt](../../adapt/SKILL.md) changes the experience for a target context. [harden](../../harden/SKILL.md) improves resilience to adverse states. [break-ui](../../break-ui/SKILL.md) deliberately exercises difficult data to expose problems; read its fixture/toggle behavior before using it in a read-only review.
- [onboard](../../onboard/SKILL.md) gets users to first value. Use it for a first-run or empty-state problem, not merely because a page has explanatory text.
- [overdrive](../../overdrive/SKILL.md) is for explicitly requested technical ambition. Ordinary “make it better” requests do not imply shaders or elaborate effects.

## Distinguish motion tasks

| Request | Selection |
| --- | --- |
| “What is this effect called?” | [animation-vocabulary](../../animation-vocabulary/SKILL.md) |
| “Where would motion help?” | [find-animation-opportunities](../../find-animation-opportunities/SKILL.md); proposals only. |
| “Plan improvements to motion across the app.” | [improve-animations](../../improve-animations/SKILL.md); plans only. |
| “Build this web transition.” | [animate](../../animate/SKILL.md) |
| “Coordinate the panel, icon, and list entrances.” | [choreograph](../../choreograph/SKILL.md) |
| “Make this web sheet track my finger.” | [gestures](../../gestures/SKILL.md) |
| “Build this transition in Expo.” | [animate-expo](../../animate-expo/SKILL.md) |
| “This animation stutters.” | [animation-performance](../../animation-performance/SKILL.md) for web; inspect the native workflow for Expo. |
| “Remove the motion that gets in the way.” | [remove-animations](../../remove-animations/SKILL.md) |

“Feels slow” may mean unnecessary delay, dropped frames, or slow data/loading. Inspect the symptom before choosing removal, animation performance, or [optimize](../../optimize/SKILL.md). [benchmark-checklist](../../benchmark-checklist/SKILL.md) supports a measured performance claim; it does not implement the optimization.

## Useful combinations

These are conditional sequences, not mandatory pipelines. Omit stages whose decisions are already settled. A transition from advice to edits requires an implementation request; invoke only skills allowed by their policy.

| Task | Useful sequence |
| --- | --- |
| Build a substantial new feature with unsettled UX and architecture | `shape` → `architect` → implementation using relevant platform skills → `code-review` when review is in scope. |
| Improve an existing interface after a requested assessment | `critique` or `audit` → the targeted editing skill → `polish` if a final pass is needed. |
| Fix a difficult bug | `diagnosing-bugs` → implementation; use `tdd` if requested or a cheap regression target fits its instructions. |
| Fix a confirmed recurring class of mistakes | Establish the cause → `correct` for proportionate prevention. A one-off mistake does not establish recurrence. |
| Implement approved motion improvements | `improve-animations` when a plan is needed → `animate`, `choreograph`, or `gestures` for the relevant change. |
| Improve measured web performance | `optimize` with `benchmark-checklist`; use `animation-performance` when frame rendering is the bottleneck. |
| Investigate a protocol or flow with difficult state invariants | `statechart` when formal modeling is warranted and its tools are available; validate counterexamples against the real system. |
| Resume substantial work with another agent | `handoff`; use `ketchup` instead when the current user only needs a progress update. |

## Keep selection proportional

A one-line copy correction, known command, or straightforward local edit usually needs no routing workflow. Select a supporting principle only for a concrete decision: retry behavior suggests `principle-make-operations-idempotent`; uncertain input boundaries suggest `principle-boundary-discipline`; repeated failed fixes suggest `principle-attack-the-premise`.

When recommending, make the fit specific: “Use `audit` to check keyboard access and narrow-screen overflow; use `harden` afterward if you want the confirmed failures fixed.” Avoid listing adjacent skills merely because they share keywords.
