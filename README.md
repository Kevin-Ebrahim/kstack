# kstack

A personal library of skills for clear communication, deliberate engineering, and polished interfaces.

The library contains **72 skills**: 40 from pstack, 11 from Emil Kowalski, 4 from Matt Pocock, and 17 extracted from Impeccable. The first 24 preserve upstream workflows; the following 9 have light integration changes, 22 have tuned workflows, and the 17 Impeccable commands have been adapted into individual skills. See [adaptations.md](adaptations.md) for the changes and [skill-selection.txt](skill-selection.txt) for the full selection. The combined Trail of Bits security review remains the final content stage.

## Organization

```text
skills/
  <upstream-skill-name>/
    SKILL.md                 Skill entry point
    references/ or *.md       Supporting material where needed
    scripts/                 Executable helpers where needed
    agents/                  Upstream metadata where provided
scripts/validate-skills.py    Library integrity checks
upstream.json                Pinned sources and reversible edits
third-party-notices.md        Consolidated upstream notices
```

Folders share one level so sibling links work. Original skill names, including pstack's `principle-` prefix, are preserved. References are loaded as needed, not as extra skill entry points.

## Communication and understanding · 9

| Skill | Purpose |
| --- | --- |
| [bro](skills/bro/SKILL.md) | Restate the last message in plain human language, with no jargon. |
| [in-your-own-words](skills/in-your-own-words/SKILL.md) | Restate in your own words what you think the user's goals are and what problem they're trying to solve. Use for /in-your-own-words. |
| [sharpen](skills/sharpen/SKILL.md) | Make a task deeper, not bigger, then rewrite the prompt. Use for /sharpen. |
| [unslop](skills/unslop/SKILL.md) | Cut AI tells from any writing. |
| [ketchup](skills/ketchup/SKILL.md) | Catch the user up on what changed in this chat since their last message, in plain words and small visuals. List every item waiting on them with what they need to decide it from the reply alone. Use for /ketchup. |
| [handoff](skills/handoff/SKILL.md) | Compact the current conversation into a handoff document for another agent to pick up. |
| [how](skills/how/SKILL.md) | Explain runtime behavior, architecture, ownership, and where a change belongs by tracing the relevant code. |
| [why](skills/why/SKILL.md) | Investigate the reasons behind a design or decision using relevant history and available sources, separating evidence from inference. |
| [teach](skills/teach/SKILL.md) | Teach a system or body of work in plain language at the requested depth, combining behavior and rationale when useful. |

## Planning and execution · 4

| Skill | Purpose |
| --- | --- |
| [architect](skills/architect/SKILL.md) | Sketch types, interfaces, and module boundaries before a substantial change; implement only when the request includes implementation. |
| [figure-it-out](skills/figure-it-out/SKILL.md) | Plan and execute a substantial task with no narrower workflow, using explicit scope, verifiable stages, and a proportionate decision trail. |
| [show-me-your-work](skills/show-me-your-work/SKILL.md) | Keep a concise evidence-backed decision log for long-running or unattended work, in a location appropriate to the project. |
| [improve-codebase-architecture](skills/improve-codebase-architecture/SKILL.md) | Survey architectural friction and propose evidence-backed improvements without automatically refactoring or modifying project decision records. |

## Review, debugging, and measurement · 8

| Skill | Purpose |
| --- | --- |
| [tdd](skills/tdd/SKILL.md) | Use only when the user explicitly asks for TDD, a failing test, or a regression test, OR when the bug has an obvious cheap local test target. Skip when the test path is unclear, expensive, integration-heavy, or not requested. |
| [benchmark-checklist](skills/benchmark-checklist/SKILL.md) | Vet a perf measurement (limiter, tuning, limits, errors, repeatability, relevance, and whether the work happened) before you report or act on it. Use when you run a benchmark or report a speedup or regression you measured. |
| [blast-radius](skills/blast-radius/SKILL.md) | Investigate what a change could break beyond its diff and test the assumptions on which its safety depends. |
| [correct](skills/correct/SKILL.md) | Turn demonstrated recurring mistakes into proportionate structural checks, types, lint rules, or behavioral tests within the requested scope. |
| [interrogate](skills/interrogate/SKILL.md) | Run an adversarial review of a change or design and report only findings demonstrated against its intended behavior. |
| [no-comments](skills/no-comments/SKILL.md) | Review comments for accuracy and usefulness, remove redundant or stale comments, and preserve rationale and important constraints. |
| [diagnosing-bugs](skills/diagnosing-bugs/SKILL.md) | Diagnose difficult bugs or performance regressions using reproducible evidence, ranked hypotheses, and targeted checks, with honest handling of intermittent failures. |
| [code-review](skills/code-review/SKILL.md) | Review a diff against requirements and repository standards with one agent, prioritizing actionable, evidence-backed findings. |

## TypeScript · 1

| Skill | Purpose |
| --- | --- |
| [typescript-best-practices](skills/typescript-best-practices/SKILL.md) | TypeScript best practices. Use when reading or editing any .ts or .tsx file. |

## Engineering principles · 21

| Skill | Purpose |
| --- | --- |
| [attack-the-premise](skills/principle-attack-the-premise/SKILL.md) | Apply when two or more fixes that share one premise have failed the same gate. Write the premise down and test it directly before you write another fix that assumes it. |
| [boundary-discipline](skills/principle-boundary-discipline/SKILL.md) | Concentrate external-data validation at trust boundaries and rely on established internal invariants without redundant checks. |
| [build-the-lever](skills/principle-build-the-lever/SKILL.md) | Build a small reusable tool when repetition or verification makes it more valuable than manual work. |
| [exhaust-the-design-space](skills/principle-exhaust-the-design-space/SKILL.md) | Apply when facing a novel UI interaction or architectural decision with no precedent in the codebase. Build 2-3 competing prototypes and compare side by side before committing. |
| [experience-first](skills/principle-experience-first/SKILL.md) | Apply when product, UX, or feature-scope tradeoffs come up. Choose user delight over implementation convenience; ship fewer polished features over more rough ones. |
| [explain-the-number](skills/principle-explain-the-number/SKILL.md) | Apply before you measure, and before you trust, report, or act on a number you measured: a speedup, a regression, a throughput, a latency, or an eval result. Find what limits it, and rule out that it measured something other than the work you think. |
| [fix-root-causes](skills/principle-fix-root-causes/SKILL.md) | Trace a failure to the first incorrect behavior and fix it within scope, preserving legitimate guards and documented workarounds. |
| [foundational-thinking](skills/principle-foundational-thinking/SKILL.md) | Apply before writing logic: choosing core types and data structures, sequencing scaffold-vs-feature work, asking what concurrent actors share. Get the data structures right so downstream code becomes obvious. |
| [guard-the-context-window](skills/principle-guard-the-context-window/SKILL.md) | Keep investigations focused with bounded reads, concise evidence summaries, and optional authorized delegation. |
| [laziness-protocol](skills/principle-laziness-protocol/SKILL.md) | Apply when refactoring, evaluating diff size, or tempted to add abstractions, layers, or signal threading. Bias toward deletion and the smallest change that solves the problem. |
| [make-operations-idempotent](skills/principle-make-operations-idempotent/SKILL.md) | Apply when designing commands, lifecycle steps, or processing loops that run amid crashes, restarts, and retries. Converge to the same end state regardless of partial prior runs. |
| [minimize-reader-load](skills/principle-minimize-reader-load/SKILL.md) | Apply when reviewing or shaping code that's hard to trace. Count layers between question and answer, and hidden state in the reader's head; collapse one-caller wrappers and shrink mutable scope. |
| [model-the-domain](skills/principle-model-the-domain/SKILL.md) | Apply when writing stateful logic, or when code branches a lot or repeats a shape assumption across files. |
| [never-block-on-the-human](skills/principle-never-block-on-the-human/SKILL.md) | Proceed with authorized work and reasonable implementation decisions while asking only for material missing input or new authorization. |
| [prove-it-works](skills/principle-prove-it-works/SKILL.md) | Apply after completing a task, before declaring done. Verify against the real artifact (run the feature, read the actual value, inspect the diff), not a proxy, self-report, or 'it compiles.' |
| [redesign-from-first-principles](skills/principle-redesign-from-first-principles/SKILL.md) | Reconsider a design around new constraints, then choose the smallest coherent change that meets the authorized requirement. |
| [separate-before-serializing-shared-state](skills/principle-separate-before-serializing-shared-state/SKILL.md) | Apply when concurrent actors might write to the same file, branch, key, or state object. Eliminate the sharing first; serialize structurally only when one shared writer is a real invariant. |
| [sequence-verifiable-units](skills/principle-sequence-verifiable-units/SKILL.md) | Sequence substantial work into independently checkable stages using the actual baseline and the repository delivery workflow. |
| [subtract-before-you-add](skills/principle-subtract-before-you-add/SKILL.md) | Apply when sequencing an addition, refactor, or rewrite. Remove dead code, redundant validators, and stub references first, then build on the simpler base. |
| [test-behavior-not-implementation](skills/principle-test-behavior-not-implementation/SKILL.md) | Apply when you write, change, or keep a test. Assert what the code's users can observe, so that the test fails when that behavior breaks and keeps passing when only the internals change. |
| [type-system-discipline](skills/principle-type-system-discipline/SKILL.md) | Apply when designing types, reviewing a function signature, or writing code in any statically-typed language. Make illegal states unrepresentable, brand semantic primitives, parse external data at boundaries, exhaust variants, derive from authoritative schemas. |

## Animation and interaction · 10

| Skill | Purpose |
| --- | --- |
| [animate](skills/animate/SKILL.md) | Build purposeful web animation with the existing component stack. |
| [animate-expo](skills/animate-expo/SKILL.md) | Build animation and gestures for React Native and Expo. |
| [review-animations](skills/review-animations/SKILL.md) | Reviews animation and motion code against a high craft bar derived from Emil Kowalski's design engineering philosophy. Default to flagging; approval is earned. |
| [improve-animations](skills/improve-animations/SKILL.md) | Audit motion across a codebase and produce prioritized implementation plans without editing application source. |
| [find-animation-opportunities](skills/find-animation-opportunities/SKILL.md) | Find useful motion opportunities without implementing them. |
| [remove-animations](skills/remove-animations/SKILL.md) | Find the animations an interface doesn't need and remove them — motion on keyboard actions, high-frequency surfaces, functional data, and decoration with no purpose — then clean up what they leave behind. Edits code, but only to subtract; it never adds or retunes motion. Use when the user says the app "feels slow", "has too much animation", "feels over-animated", wants to "tone down the motion", or asks what animations to remove. For finding places that should animate, use find-animation-opportunities; for fixing animations that should stay, use improve-animations or review-animations. |
| [animation-performance](skills/animation-performance/SKILL.md) | Diagnose frame drops and apply scoped fixes when requested. |
| [animation-vocabulary](skills/animation-vocabulary/SKILL.md) | Name a motion effect from its description. |
| [choreograph](skills/choreograph/SKILL.md) | Coordinate timing and relationships between moving elements. |
| [gestures](skills/gestures/SKILL.md) | Build interruptible drag, swipe, and sheet interactions. |

## UI stress testing · 1

| Skill | Purpose |
| --- | --- |
| [break-ui](skills/break-ui/SKILL.md) | Stress-test UI with realistic difficult data. |

## Formal state models · 1

| Skill | Purpose |
| --- | --- |
| [statechart](skills/statechart/SKILL.md) | Check a TLA+ model of a system that moves between states, such as a product flow, a protocol, or a service, and draw it as a Mermaid statechart. The report gives the shortest path to each state that breaks a rule. Use for /statechart, or to show a bug as a path through states. |

## Design direction · 7

| Skill | Purpose |
| --- | --- |
| [bolder](skills/bolder/SKILL.md) | Make an existing interface or section more expressive while preserving its brand, functionality, and requested scope. |
| [quieter](skills/quieter/SKILL.md) | Reduce visual intensity and distracting motion in an interface while retaining hierarchy, readability, and personality. |
| [distill](skills/distill/SKILL.md) | Simplify a cluttered interface by removing redundant presentation and interaction steps while preserving required capabilities. |
| [colorize](skills/colorize/SKILL.md) | Add purposeful color to a muted interface using stable semantic roles, existing brand constraints, and verified contrast. |
| [typeset](skills/typeset/SKILL.md) | Improve interface typography, hierarchy, wrapping, and font delivery within the established design system. |
| [layout](skills/layout/SKILL.md) | Improve interface spacing, grouping, density, and responsive structure while preserving task order and accessibility. |
| [overdrive](skills/overdrive/SKILL.md) | Build ambitious browser effects or unusually responsive interactions when explicitly requested, with measured performance and usable fallbacks. |

## Interface review and finishing · 7

| Skill | Purpose |
| --- | --- |
| [critique](skills/critique/SKILL.md) | Produce an evidence-backed, scored UX and visual design critique of a specific interface without editing the application. |
| [audit](skills/audit/SKILL.md) | Audit a web interface for accessibility, performance, theming, responsiveness, and implementation defects; report findings without applying fixes. |
| [polish](skills/polish/SKILL.md) | Apply a final quality pass to an existing interface, fixing scoped interaction, visual, content, and state inconsistencies without redesigning it. |
| [harden](skills/harden/SKILL.md) | Make an interface resilient to realistic content extremes, failures, localization, and interrupted interactions within the existing product scope. |
| [adapt](skills/adapt/SKILL.md) | Adapt an existing interface to requested screens, containers, input methods, or output contexts while preserving its core tasks and identity. |
| [optimize](skills/optimize/SKILL.md) | Measure and improve a web interface bottleneck in loading, rendering, interaction, or resource use without sacrificing functionality. |
| [onboard](skills/onboard/SKILL.md) | Design or improve first-run flows, contextual guidance, and empty states that help users reach their first meaningful result. |

## Product and design planning · 3

| Skill | Purpose |
| --- | --- |
| [shape](skills/shape/SKILL.md) | Plan the user experience for a feature or surface and return a concise design brief before implementation. |
| [init](skills/init/SKILL.md) | Establish or refresh durable product context in PRODUCT.md, including users, purpose, constraints, and available evidence; not project scaffolding. |
| [document](skills/document/SKILL.md) | Capture an existing interface design system in DESIGN.md from observed tokens, components, and rendered behavior; not generic document creation. |

## Upstream sources

| Source | Pinned commit | Notice |
| --- | --- | --- |
| [pstack](https://github.com/cursor/plugins/tree/de8ee15dd1194627d21eb5fcd41cb1873208dabb/pstack) | `de8ee15dd1194627d21eb5fcd41cb1873208dabb` | [Lauren Tan, MIT](third-party-notices.md#pstack) |
| [Emil Kowalski](https://github.com/emilkowalski/skills/tree/715c1807e08c497cfd1dc4feb450a2a3300ef2a9) | `715c1807e08c497cfd1dc4feb450a2a3300ef2a9` | [Emil Kowalski, MIT](third-party-notices.md#emil-kowalski) |
| [Matt Pocock](https://github.com/mattpocock/skills/tree/4ae2317ddb22b046e26455e4f9c9b3aaaf62212d) | `4ae2317ddb22b046e26455e4f9c9b3aaaf62212d` | [Matt Pocock, MIT](third-party-notices.md#matt-pocock) |
| [Impeccable](https://github.com/pbakaus/impeccable/tree/ec229b48547f24685ffb22aa51c462c5ae27908c) | `ec229b48547f24685ffb22aa51c462c5ae27908c` | [Paul Bakaus, Apache-2.0](third-party-notices.md#impeccable) |

The manifest records each imported file's upstream path, Git blob ID, original SHA-256, local SHA-256, and reversible changes. Validation recovers the original upstream bytes from the local files and recorded edits. Notices are consolidated at the root; include the relevant notice when redistributing folders.

## Supporting resources

Animation recipes, review standards, the worst-case UI catalog, and TypeScript examples remain alongside their entry points. Architecture and explanation guides, the history-investigation playbooks, motion audit/plan templates, an optional architecture HTML scaffold, and decision-log/debugging helpers support the tuned workflows.

Impeccable commands are individual entry points with no bundled command runner, detector, live overlay, or hidden state store. Five focused references support critique scoring and perspectives, responsive implementation, PRODUCT.md, and DESIGN.md. Modified files link directly to their pinned upstream source and adaptation notes. Platform-specific iOS/Android reference files are not included.

First-batch reference snapshots now resolve to canonical imported skills. The duplicate copies were removed. Upstream mentions of `prototype` and `emil-design-eng` remain informational; those skills are outside this selection and are not installed.

Statechart includes the upstream production TypeScript modules and launcher. The upstream test corpus and test-only npm dependencies are not bundled. The runtime package needs no npm dependencies. The launcher selects a supported Node, Bun, or Deno runtime; its subprocess handling also requires a POSIX shell. Provide Java 11+ and a verified TLC jar through `JAVA` and `TLA2TOOLS`, or provision the pinned mise tools explicitly. Missing dependencies produce an error without automatic installation. Rendering uses available Mermaid tooling; Pele is optional. See the [statechart instructions](skills/statechart/SKILL.md).

## Using and maintaining the library

This repository stores the library; it does not install or enable skills in an agent. Keep the collection together because some skills link to siblings. Individual folders with sibling links are not standalone distributions.

Invocation policies are retained for upstream skills that supplied them. Impeccable command extracts use standard name/description metadata and normal automatic discovery; their descriptions distinguish UI audit, design documentation, and product initialization from unrelated tasks. The bundled Codex skill-creator validator rejects the upstream `disable-model-invocation` and `argument-hint` fields; the library validator accepts the retained invocation field and checks its type. This is source-library validation, not a claim of provider-specific packaging compatibility.

Validate with Python 3 and PyYAML installed:

```sh
python scripts/validate-skills.py
```

The check covers names, catalog coverage, source notices, local Markdown links, checksums, and recovery of upstream Git blobs. It does not prove agent behavior or animation library API compatibility. Script smoke checks and their limits are recorded in [adaptations.md](adaptations.md).

For an update, review the new upstream commit, include required supporting files, record intentional local changes, and rerun validation. Do not refresh from a moving branch without updating pinned provenance.
