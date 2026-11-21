# Skill catalog

Choose by the requested outcome, then read the skill instructions. Names beginning with `$mattpocock-skills:` belong to [Matt Pocock’s optional plugin](../../../docs/setup.md#matt-pocock). Invocation policy and prerequisites remain in each skill.

## Find the relevant area

- [Communication and understanding](#communication-and-understanding): explain, summarize, rephrase, catch up, hand off.
- [Planning and architecture](#planning-and-architecture): discovery interview, module design, architecture survey, long tasks.
- [Code review and debugging](#code-review-and-debugging): diff, PR, inline comments, bug, regression, assumptions, TypeScript.
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
| `$mattpocock-skills:handoff` | Save a temporary handoff document so another agent can resume the task. |
| [how](../../how/SKILL.md) | Explain code behavior, component relationships, ownership, or where a change belongs. |
| [why](../../why/SKILL.md) | Investigate the reasons behind a decision using history and available evidence. |
| [teach](../../teach/SKILL.md) | Build an explanation combining how something works and why, at the user's requested depth. |

## Planning and architecture

| Skill | Choose when |
| --- | --- |
| [grill](../../grill/SKILL.md) | The user wants a structured interview to uncover decisions in a plan, design, or idea. |
| [architect](../../architect/SKILL.md) | A substantial code change needs types, interfaces, and module boundaries worked out. |
| [plan-eng-review](../../plan-eng-review/SKILL.md) | Review an engineering plan for architecture, failure modes, testing, and performance. |
| `$mattpocock-skills:improve-codebase-architecture` | Find opportunities to deepen modules and compare the candidates in a visual report. |
| [figure-it-out](../../figure-it-out/SKILL.md) | A substantial unusual task needs an execution approach and no narrower workflow fits. |
| [show-me-your-work](../../show-me-your-work/SKILL.md) | Long-running work needs a reviewable decision and evidence log. |

## Code review and debugging

| Skill | Choose when |
| --- | --- |
| [code-review](../../code-review/SKILL.md) | Review a diff against requirements and repository standards with independent agents for actionable defects. |
| [inline-pr-review](../../inline-pr-review/SKILL.md) | Review a PR and save verified findings as comments on specific diff lines. |
| [blast-radius](../../blast-radius/SKILL.md) | Investigate consequences beyond the visible diff and verify the change's key safety assumption. |
| [interrogate](../../interrogate/SKILL.md) | Challenge a design or change adversarially and retain findings that can be demonstrated. |
| `$mattpocock-skills:diagnosing-bugs` | A difficult or intermittent failure needs a reproducible signal and targeted investigation. |
| [tdd](../../tdd/SKILL.md) | Test-first work is requested or a bug has a clear, cheap regression target; do not create a broad test setup just to use it. |
| [correct](../../correct/SKILL.md) | Demonstrated recurring mistakes justify a structural check, type, lint rule, or other prevention. |
| [no-comments](../../no-comments/SKILL.md) | Review comment accuracy and usefulness, preserving rationale and important constraints. |
| [benchmark-checklist](../../benchmark-checklist/SKILL.md) | A measurement or performance claim needs its workload, bottleneck, and repeatability checked. |
| [typescript-best-practices](../../typescript-best-practices/SKILL.md) | Reading or editing TypeScript needs language-specific guidance and examples. |

## Interface design and quality

With [Impeccable installed](../../../docs/setup.md#impeccable), use `$impeccable shape` for a UX brief, `$impeccable critique` for a scored design review, `$impeccable audit` for technical UI findings, and `$impeccable polish` for a final pass. Run `$impeccable` to browse its other design commands.

With [Emil Kowalski’s library installed](../../../docs/setup.md#emil-kowalski), use `$break-ui` to stress-test a component with difficult data.

## Animation and interaction

Use [Emil Kowalski’s library](../../../docs/setup.md#emil-kowalski) for web and native motion. Run `$ask-emil` to choose a workflow or check the [motion task examples](choosing-skills.md#distinguish-motion-tasks).

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
