# Skill catalog

Choose by the requested outcome, then read the linked instructions. Names below are the actual skill identifiers, including the `principle-` prefix. Invocation policy and prerequisites remain in each skill.

## Find the relevant area

- [Communication and understanding](#communication-and-understanding): explain, summarize, rephrase, catch up, hand off.
- [Planning and architecture](#planning-and-architecture): product context, design brief, module design, architecture survey, long tasks.
- [Code review and debugging](#code-review-and-debugging): diff, bug, regression, assumptions, comments, TypeScript.
- [Interface design and quality](#interface-design-and-quality): critique, accessibility, layout, typography, polish, resilience, performance.
- [Animation and interaction](#animation-and-interaction): motion, transitions, gestures, sequencing, frame drops.
- [Security and state models](#security-and-state-models): security boundaries, dependencies, state transitions, invariants.
- [Engineering principles](#engineering-principles): specific implementation and reasoning decisions.

## Communication and understanding

| Skill | Choose when |
| --- | --- |
| [bro](../../bro/SKILL.md) | The last response needs a plain-language restatement. |
| [in-your-own-words](../../in-your-own-words/SKILL.md) | The user wants the agent to restate its understanding of the goal and underlying problem. |
| [sharpen](../../sharpen/SKILL.md) | A task or prompt needs clearer thinking and wording within its existing scope. |
| [unslop](../../unslop/SKILL.md) | Writing needs formulaic AI phrasing removed. |
| [ketchup](../../ketchup/SKILL.md) | The current user needs a catch-up on progress and pending decisions. |
| [handoff](../../handoff/SKILL.md) | Another agent or teammate needs a durable account of where to resume. |
| [how](../../how/SKILL.md) | Explain code behavior, component relationships, ownership, or where a change belongs. |
| [why](../../why/SKILL.md) | Investigate the reasons behind a decision using history and available evidence. |
| [teach](../../teach/SKILL.md) | Build an explanation combining how something works and why, at the user's requested depth. |

## Planning and architecture

| Skill | Choose when |
| --- | --- |
| [shape](../../shape/SKILL.md) | The user experience, states, interactions, and boundaries need a design brief. |
| [architect](../../architect/SKILL.md) | A substantial code change needs types, interfaces, and module boundaries worked out. |
| [improve-codebase-architecture](../../improve-codebase-architecture/SKILL.md) | Survey an existing codebase for architectural friction and improvement candidates. |
| [figure-it-out](../../figure-it-out/SKILL.md) | A substantial unusual task needs an execution approach and no narrower workflow fits. |
| [show-me-your-work](../../show-me-your-work/SKILL.md) | Long-running work needs a reviewable decision and evidence log. |
| [init](../../init/SKILL.md) | Establish or refresh durable product facts in PRODUCT.md; this does not scaffold a project. |
| [document](../../document/SKILL.md) | Capture an existing visual system in DESIGN.md; this is not general document writing. |

## Code review and debugging

| Skill | Choose when |
| --- | --- |
| [code-review](../../code-review/SKILL.md) | Review a diff against requirements and repository standards for actionable defects. |
| [blast-radius](../../blast-radius/SKILL.md) | Investigate consequences beyond the visible diff and verify the change's key safety assumption. |
| [interrogate](../../interrogate/SKILL.md) | Challenge a design or change adversarially and retain findings that can be demonstrated. |
| [diagnosing-bugs](../../diagnosing-bugs/SKILL.md) | A difficult or intermittent failure needs evidence, hypotheses, and targeted investigation. |
| [tdd](../../tdd/SKILL.md) | Test-first work is requested or a bug has a clear, cheap regression target; do not create a broad test setup just to use it. |
| [correct](../../correct/SKILL.md) | Demonstrated recurring mistakes justify a structural check, type, lint rule, or other prevention. |
| [no-comments](../../no-comments/SKILL.md) | Review comment accuracy and usefulness, preserving rationale and important constraints. |
| [benchmark-checklist](../../benchmark-checklist/SKILL.md) | A measurement or performance claim needs its workload, bottleneck, and repeatability checked. |
| [typescript-best-practices](../../typescript-best-practices/SKILL.md) | Reading or editing TypeScript needs language-specific guidance and examples. |

## Interface design and quality

| Skill | Choose when |
| --- | --- |
| [critique](../../critique/SKILL.md) | Assess UX, hierarchy, visual direction, and usability; deliver a scored review. |
| [audit](../../audit/SKILL.md) | Report technical web UI issues in accessibility, responsiveness, theming, performance, and implementation. |
| [polish](../../polish/SKILL.md) | Apply a final scoped quality pass to an existing feature and its interaction states. |
| [bolder](../../bolder/SKILL.md) | An existing section needs stronger expression within its established identity. |
| [quieter](../../quieter/SKILL.md) | Competing emphasis, effects, or motion need restraint while preserving character and readability. |
| [distill](../../distill/SKILL.md) | Redundant presentation, choices, or steps make an interface unnecessarily complex. |
| [colorize](../../colorize/SKILL.md) | A muted interface needs purposeful color roles and verified contrast. |
| [typeset](../../typeset/SKILL.md) | Improve type hierarchy, readability, wrapping, or font delivery. |
| [layout](../../layout/SKILL.md) | Improve grouping, spacing, density, reading order, or responsive structure. |
| [overdrive](../../overdrive/SKILL.md) | The user explicitly wants ambitious browser effects or unusually responsive interactions. |
| [harden](../../harden/SKILL.md) | Improve resilience to failures, localization, content extremes, and interrupted interactions. |
| [adapt](../../adapt/SKILL.md) | Fit an existing interface to another screen, input method, container, or output medium. |
| [optimize](../../optimize/SKILL.md) | Measure and improve a web loading, rendering, interaction, or resource bottleneck. |
| [onboard](../../onboard/SKILL.md) | Improve first use, contextual guidance, or empty states so users reach a meaningful result. |
| [break-ui](../../break-ui/SKILL.md) | Stress-test a component with realistic difficult data and inspect what breaks; it may add a demo fixture/toggle. |

## Animation and interaction

| Skill | Choose when |
| --- | --- |
| [animate](../../animate/SKILL.md) | Implement or retune a web animation, including purpose, timing, easing, and interruption. |
| [animate-expo](../../animate-expo/SKILL.md) | Implement motion or gestures in React Native/Expo using the native animation stack. |
| [review-animations](../../review-animations/SKILL.md) | Critique existing motion against the library's motion standards. |
| [improve-animations](../../improve-animations/SKILL.md) | Audit motion across a codebase and produce implementation plans; this skill does not apply them. |
| [find-animation-opportunities](../../find-animation-opportunities/SKILL.md) | Propose where motion would help or should be avoided, without implementing it. |
| [remove-animations](../../remove-animations/SKILL.md) | Remove unnecessary motion and clean up its implementation. |
| [animation-performance](../../animation-performance/SKILL.md) | Diagnose stutter, dropped frames, rendering cost, or unsuitable animation properties on the web. |
| [animation-vocabulary](../../animation-vocabulary/SKILL.md) | Find the name of an effect the user can describe but cannot name. |
| [choreograph](../../choreograph/SKILL.md) | Coordinate the order, overlap, and rhythm of several moving elements. |
| [gestures](../../gestures/SKILL.md) | Build or fix web drag, swipe, sheet, and other direct-manipulation interactions. |

## Security and state models

| Skill | Choose when |
| --- | --- |
| [security-review](../../security-review/SKILL.md) | Review security-relevant API misuse, insecure defaults, or dependency supply-chain risks. |
| [statechart](../../statechart/SKILL.md) | Explicitly model state transitions and invariants in TLA+, check them, and show counterexample paths as a Mermaid chart. Requires its model-checking tools. |

## Engineering principles

Load a principle when its decision arises. These support a workflow; selecting one does not expand the task or require loading the whole group.

| Skill | Decision it helps with |
| --- | --- |
| [principle-attack-the-premise](../../principle-attack-the-premise/SKILL.md) | Repeated failed fixes share an assumption that now needs testing. |
| [principle-boundary-discipline](../../principle-boundary-discipline/SKILL.md) | Decide where external data must be validated and which internal invariants are established. |
| [principle-build-the-lever](../../principle-build-the-lever/SKILL.md) | Decide whether repeatable work or verification justifies a small reusable tool. |
| [principle-exhaust-the-design-space](../../principle-exhaust-the-design-space/SKILL.md) | Compare prototypes for an unfamiliar interaction or architecture with no established precedent. |
| [principle-experience-first](../../principle-experience-first/SKILL.md) | Resolve feature or implementation tradeoffs around user experience. |
| [principle-explain-the-number](../../principle-explain-the-number/SKILL.md) | Establish what a measurement actually captures before trusting it. |
| [principle-fix-root-causes](../../principle-fix-root-causes/SKILL.md) | Trace a symptom to the first incorrect behavior and choose a scoped repair. |
| [principle-foundational-thinking](../../principle-foundational-thinking/SKILL.md) | Choose core types, data structures, and sequencing before adding logic. |
| [principle-guard-the-context-window](../../principle-guard-the-context-window/SKILL.md) | Bound large investigations and preserve useful evidence without flooding context. |
| [principle-laziness-protocol](../../principle-laziness-protocol/SKILL.md) | Find the smallest effective solution and avoid unnecessary abstractions. |
| [principle-make-operations-idempotent](../../principle-make-operations-idempotent/SKILL.md) | Design operations to converge safely after retries and partial failures. |
| [principle-minimize-reader-load](../../principle-minimize-reader-load/SKILL.md) | Reduce indirection and hidden state that make code difficult to follow. |
| [principle-model-the-domain](../../principle-model-the-domain/SKILL.md) | Represent domain concepts and valid states in stateful or branch-heavy code. |
| [principle-never-block-on-the-human](../../principle-never-block-on-the-human/SKILL.md) | Continue authorized work while identifying decisions that genuinely need user input. |
| [principle-prove-it-works](../../principle-prove-it-works/SKILL.md) | Choose evidence that verifies the actual outcome before claiming completion. |
| [principle-redesign-from-first-principles](../../principle-redesign-from-first-principles/SKILL.md) | Reconsider a design around new constraints without automatically expanding into a rewrite. |
| [principle-separate-before-serializing-shared-state](../../principle-separate-before-serializing-shared-state/SKILL.md) | Eliminate avoidable shared mutable state before introducing coordination. |
| [principle-sequence-verifiable-units](../../principle-sequence-verifiable-units/SKILL.md) | Break substantial work into stages whose results can be checked independently. |
| [principle-subtract-before-you-add](../../principle-subtract-before-you-add/SKILL.md) | Remove obsolete pieces before introducing a replacement. |
| [principle-test-behavior-not-implementation](../../principle-test-behavior-not-implementation/SKILL.md) | Make a warranted test protect observable behavior rather than implementation details. |
| [principle-type-system-discipline](../../principle-type-system-discipline/SKILL.md) | Use semantic types and validation to represent valid states and reject invalid ones. |
