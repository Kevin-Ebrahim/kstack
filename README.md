# kstack

74 skills for communication, engineering, interface design, animation, and security review.

## Usage

Choose a skill below and ask your agent to follow its `SKILL.md`, for example:

> Use skills/code-review/SKILL.md to review this diff.

For help choosing, use [skill-index](skills/skill-index/SKILL.md). It maps tasks to skills and explains which combinations fit. Once installed, invoke it with `$skill-index`, or let the agent select it when choosing a workflow.

Install all skills into `~/.agents/skills`:

```bash
./install.sh
```

Use `./install.sh --dry-run` to preview, or `./install.sh /path/to/.agents/skills` for another location. The installer symlinks each skill to this checkout, so updates here are available immediately. Keep the checkout in place. Rerun the installer to link newly added skills; existing matching links are left alone, and conflicting names are skipped with a nonzero exit status.

Keep each skill's supporting files with it. Some skills link to siblings, so keep the collection together.

Runtime requirements for skills with tools:

- [Statechart](skills/statechart/SKILL.md): a TypeScript-capable Node, Bun, or Deno runtime, a POSIX shell, Java 11+, and a TLC jar. Set `JAVA` and `TLA2TOOLS` as described in the skill.
- [Security review](skills/security-review/references/supply-chain.md): Python 3.11+ for the dependency collector. Online collection queries public metadata services; offline mode uses cached responses.

## Communication and understanding · 9

| Skill | Purpose |
| --- | --- |
| [bro](skills/bro/SKILL.md) | Restate the last message in plain language without jargon. |
| [in-your-own-words](skills/in-your-own-words/SKILL.md) | Restate your understanding of the user’s goal and underlying problem. |
| [sharpen](skills/sharpen/SKILL.md) | Refine a task or prompt to make it more thoughtful without expanding its scope. |
| [unslop](skills/unslop/SKILL.md) | Remove formulaic AI-sounding language from writing. |
| [ketchup](skills/ketchup/SKILL.md) | Catch the user up on what happened since their last message and identify decisions waiting on them. |
| [handoff](skills/handoff/SKILL.md) | Prepare a concise handoff document so another agent/teammate can resume the work. |
| [how](skills/how/SKILL.md) | Explain how a system works, how its pieces fit together and where a change belongs. |
| [why](skills/why/SKILL.md) | Investigate the reasons behind a design or decision, using available evidence such as history and issue discussions. |
| [teach](skills/teach/SKILL.md) | Combine how and why into a plain-language explanation of a system or body of work. |

## Planning and execution · 4

| Skill | Purpose |
| --- | --- |
| [architect](skills/architect/SKILL.md) | Sketch the types, interfaces and module structure before implementing a substantial change. |
| [figure-it-out](skills/figure-it-out/SKILL.md) | Create and follow an auditable approach for a large or unusual task that has no narrower workflow. |
| [show-me-your-work](skills/show-me-your-work/SKILL.md) | Keep a reviewable decision log for long-running or unattended work. |
| [improve-codebase-architecture](skills/improve-codebase-architecture/SKILL.md) | Survey the codebase for architectural improvements. |

## Review, debugging, and measurement · 8

| Skill | Purpose |
| --- | --- |
| [tdd](skills/tdd/SKILL.md) | Use a test-first or regression-test workflow when explicitly requested or when a cheap local test is appropriate. |
| [benchmark-checklist](skills/benchmark-checklist/SKILL.md) | Check whether a performance measurement is meaningful and repeatable before reporting it. |
| [blast-radius](skills/blast-radius/SKILL.md) | Investigate what a change could break outside the visible diff and verify the key safety assumption. |
| [correct](skills/correct/SKILL.md) | Turn recurring mistakes into structural checks, types, lint rules or tests that prevent them from recurring. |
| [interrogate](skills/interrogate/SKILL.md) | Run an adversarial review of a change or design and keep findings that can be demonstrated. |
| [no-comments](skills/no-comments/SKILL.md) | Review code comments, address accepted findings and consider expressing important constraints in code or checks. |
| [diagnosing-bugs](skills/diagnosing-bugs/SKILL.md) | Structured debugging for difficult bugs and performance regressions. |
| [code-review](skills/code-review/SKILL.md) | Review changes against requirements and standards; work with one agent and prioritize actionable findings. |

## TypeScript · 1

| Skill | Purpose |
| --- | --- |
| [typescript-best-practices](skills/typescript-best-practices/SKILL.md) | Apply TypeScript-specific guidance when reading or editing TypeScript. |

## Engineering principles · 21

| Skill | Purpose |
| --- | --- |
| [attack-the-premise](skills/principle-attack-the-premise/SKILL.md) | After repeated failed fixes, question and test the assumption they share. |
| [boundary-discipline](skills/principle-boundary-discipline/SKILL.md) | Validate external input at system boundaries and keep internal logic focused. |
| [build-the-lever](skills/principle-build-the-lever/SKILL.md) | Build a reusable tool or script to perform or verify substantial work. |
| [exhaust-the-design-space](skills/principle-exhaust-the-design-space/SKILL.md) | Compare multiple prototypes for unfamiliar UI or architecture decisions. |
| [experience-first](skills/principle-experience-first/SKILL.md) | Favor a polished user experience when making product trade-offs. |
| [explain-the-number](skills/principle-explain-the-number/SKILL.md) | Check what a measurement actually captures before trusting or reporting it. |
| [fix-root-causes](skills/principle-fix-root-causes/SKILL.md) | Trace symptoms to their source and address the underlying problem. |
| [foundational-thinking](skills/principle-foundational-thinking/SKILL.md) | Choose sound data structures, types and sequencing before building logic. |
| [guard-the-context-window](skills/principle-guard-the-context-window/SKILL.md) | Keep large outputs and investigations from overwhelming the main conversation. |
| [laziness-protocol](skills/principle-laziness-protocol/SKILL.md) | Prefer deletion and the smallest effective solution over extra abstractions. |
| [make-operations-idempotent](skills/principle-make-operations-idempotent/SKILL.md) | Make repeated operations converge safely after retries or partial failures. |
| [minimize-reader-load](skills/principle-minimize-reader-load/SKILL.md) | Make code easier to follow by reducing indirection and hidden state. |
| [model-the-domain](skills/principle-model-the-domain/SKILL.md) | Represent domain concepts and valid states explicitly in stateful or branch-heavy code. |
| [never-block-on-the-human](skills/principle-never-block-on-the-human/SKILL.md) | Continue autonomously on reversible work instead of asking unnecessary permission. |
| [prove-it-works](skills/principle-prove-it-works/SKILL.md) | Verify the actual result before declaring a task complete. |
| [redesign-from-first-principles](skills/principle-redesign-from-first-principles/SKILL.md) | Reconsider the overall design when integrating a new requirement. |
| [separate-before-serializing-shared-state](skills/principle-separate-before-serializing-shared-state/SKILL.md) | Avoid shared mutable state where possible before adding coordination around it. |
| [sequence-verifiable-units](skills/principle-sequence-verifiable-units/SKILL.md) | Break multi-step work into independently verifiable stages. |
| [subtract-before-you-add](skills/principle-subtract-before-you-add/SKILL.md) | Remove obsolete or redundant pieces before introducing new ones. |
| [test-behavior-not-implementation](skills/principle-test-behavior-not-implementation/SKILL.md) | Test externally observable behavior rather than internal implementation details. |
| [type-system-discipline](skills/principle-type-system-discipline/SKILL.md) | Use types and validation to represent valid states and prevent invalid ones. |

## Animation and interaction · 10

| Skill | Purpose |
| --- | --- |
| [animate](skills/animate/SKILL.md) | Design and implement a web animation, including timing, easing, interruption and reduced motion. |
| [animate-expo](skills/animate-expo/SKILL.md) | Build animations and gestures for React Native and Expo. |
| [review-animations](skills/review-animations/SKILL.md) | Critically review existing animation against Emil’s motion principles. |
| [improve-animations](skills/improve-animations/SKILL.md) | Audit motion across a codebase and produce prioritized implementation plans; it does not apply them. |
| [find-animation-opportunities](skills/find-animation-opportunities/SKILL.md) | Identify where motion would help and where it should be avoided; it does not implement changes. |
| [remove-animations](skills/remove-animations/SKILL.md) | Remove unnecessary motion and clean up what it leaves behind. |
| [animation-performance](skills/animation-performance/SKILL.md) | Diagnose and improve animations that stutter or drop frames. |
| [animation-vocabulary](skills/animation-vocabulary/SKILL.md) | Find the proper name for a motion effect you can describe but don’t know how to name. |
| [choreograph](skills/choreograph/SKILL.md) | Coordinate several moving elements so their timing and sequence feel intentional. |
| [gestures](skills/gestures/SKILL.md) | Build or refine responsive drag, swipe, sheet and other gesture-driven interactions. |

## UI stress testing · 1

| Skill | Purpose |
| --- | --- |
| [break-ui](skills/break-ui/SKILL.md) | Stress-test a component or screen with difficult but realistic data. |

## Formal state models · 1

| Skill | Purpose |
| --- | --- |
| [statechart](skills/statechart/SKILL.md) | Model a stateful system with TLA+ and produce a Mermaid statechart and paths to broken properties. |

## Design direction · 7

| Skill | Purpose |
| --- | --- |
| [bolder](skills/bolder/SKILL.md) | Make a safe or restrained design more visually expressive. |
| [quieter](skills/quieter/SKILL.md) | Tone down a design that feels too loud. |
| [distill](skills/distill/SKILL.md) | Remove unnecessary elements and simplify the interface. |
| [colorize](skills/colorize/SKILL.md) | Introduce purposeful color to a muted interface. |
| [typeset](skills/typeset/SKILL.md) | Improve typography, hierarchy and sizing. |
| [layout](skills/layout/SKILL.md) | Improve spacing, arrangement and visual rhythm. |
| [overdrive](skills/overdrive/SKILL.md) | Add ambitious effects such as shaders, spring physics or scroll-driven motion. |

## Interface review and finishing · 7

| Skill | Purpose |
| --- | --- |
| [critique](skills/critique/SKILL.md) | Produce a scored UX and design critique. |
| [audit](skills/audit/SKILL.md) | Produce a technical quality report covering areas such as accessibility, responsiveness and performance. |
| [polish](skills/polish/SKILL.md) | Make a final quality pass before shipping. |
| [harden](skills/harden/SKILL.md) | Address errors, internationalization, overflow and edge cases. |
| [adapt](skills/adapt/SKILL.md) | Adjust an interface for different screens and devices. |
| [optimize](skills/optimize/SKILL.md) | Improve loading and rendering performance. |
| [onboard](skills/onboard/SKILL.md) | Design first-run experiences and empty states. |

## Product and design planning · 3

| Skill | Purpose |
| --- | --- |
| [shape](skills/shape/SKILL.md) | Plan the user experience before implementation. |
| [init](skills/init/SKILL.md) | Establish product context and write PRODUCT.md for the project. |
| [document](skills/document/SKILL.md) | Capture the existing visual system in DESIGN.md. |

## Security · 1

| Skill | Purpose |
| --- | --- |
| [security-review](skills/security-review/SKILL.md) | Review API misuse, insecure defaults, and dependency supply-chain risks. |

## Upstream sources

| Source | Notice |
| --- | --- |
| [pstack](https://github.com/cursor/plugins/tree/de8ee15dd1194627d21eb5fcd41cb1873208dabb/pstack) | [MIT](third-party-notices.md#pstack) |
| [Emil Kowalski](https://github.com/emilkowalski/skills/tree/715c1807e08c497cfd1dc4feb450a2a3300ef2a9) | [MIT](third-party-notices.md#emil-kowalski) |
| [Matt Pocock](https://github.com/mattpocock/skills/tree/4ae2317ddb22b046e26455e4f9c9b3aaaf62212d) | [MIT](third-party-notices.md#matt-pocock) |
| [Impeccable](https://github.com/pbakaus/impeccable/tree/ec229b48547f24685ffb22aa51c462c5ae27908c) | [Apache-2.0](third-party-notices.md#impeccable) |
| [Trail of Bits](https://github.com/trailofbits/skills/tree/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff) | [CC BY-SA 4.0](third-party-notices.md#trail-of-bits) |
