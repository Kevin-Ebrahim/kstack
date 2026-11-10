# Adaptations

The second batch adds nine skills. Their pinned upstream versions are recorded in [upstream.json](upstream.json), including reversible text edits for every changed file. Existing invocation policies are retained. These are content adaptations; provider-specific installation remains separate.

| Skill | Local changes |
| --- | --- |
| [ketchup](skills/ketchup/SKILL.md) | Use available visualization tools rather than requiring `/visualize`; allow a table when a chart tool is unavailable. Preserve the read-only catch-up workflow. |
| [benchmark-checklist](skills/benchmark-checklist/SKILL.md) | Replace unselected PR, performance, and optimization playbook dependencies with their relevant measurement instructions. |
| [typescript-best-practices](skills/typescript-best-practices/SKILL.md) | Remove provider-specific `paths` metadata; retain file applicability in the description. Link the installed type-system principle and examples. Respect existing branding, public APIs, and repository conventions. Inline boundary guidance. Distinguish assertions from validation and correct the duration invariant in the patterns reference. |
| [type-system-discipline](skills/principle-type-system-discipline/SKILL.md) | Link the installed TypeScript skill; inline boundary and schema-check guidance instead of requiring unselected principles. Apply semantic wrappers where they solve a real problem. |
| [animate](skills/animate/SKILL.md) | Replace `pick-ui-library` with inspecting and reusing the project's accessible components. Include the full upstream recipes. |
| [gestures](skills/gestures/SKILL.md) | Start with the existing gesture/component stack; treat Vaul as an option instead of a mandatory replacement. Remove the missing library-selection skill dependency. |
| [remove-animations](skills/remove-animations/SKILL.md) | Distinguish assessment from authorized edits. Allow necessary dependency cleanup without repeat approval after checking consumers, configuration, and workspace scope. |
| [animation-performance](skills/animation-performance/SKILL.md) | A diagnosis-only request reports and stops. A request to fix or improve continues through a scoped fix and comparable verification, reporting unavailable evidence honestly. |
| [handoff](skills/handoff/SKILL.md) | Replace the literal Skill tool requirement with available loading/file-reading mechanisms. Preserve temporary output and the upstream `agents/openai.yaml` invocation policy. |

The first-batch measurement principle now uses the adapted benchmark skill directly. Its duplicate upstream reference snapshot was removed to avoid two competing procedures.

Validation checks names, references, source notices, content integrity, and exact recovery of upstream files. It does not execute the animation recipes or demonstrate behavior in a live agent session.

## Third batch: tuned workflows

This batch adds 22 skills. Multi-agent execution is optional where it helps and is authorized; code-review explicitly uses one agent. Required external agent names, model choices, arena, and setup workflows were removed. Existing upstream invocation policies are retained.

| Skill | Local changes |
| --- | --- |
| [architect](skills/architect/SKILL.md) | Separate design-only and implementation requests; compare alternatives proportionately. Keep design red flags and adapt the rationale template. |
| [how](skills/how/SKILL.md) | Trace and explain directly; retain an adapted explanation guide without requiring explorer/explainer agents. |
| [why](skills/why/SKILL.md) | Search relevant available evidence rather than every connector. Preserve confidence distinctions and source-specific playbooks. |
| [teach](skills/teach/SKILL.md) | Use how/why and visuals only when they help; match requested depth without mandatory image sequences or artificial pauses. |
| [blast-radius](skills/blast-radius/SKILL.md) | Focus on consequential assumptions and executable evidence, respecting review scope and permissions. |
| [correct](skills/correct/SKILL.md) | Require demonstrated recurrence and proportionate enforcement; remove automatic commits and instruction-file rituals. |
| [figure-it-out](skills/figure-it-out/SKILL.md) | Make the planning/execution loop self-contained and scale checks and logging to the task. |
| [interrogate](skills/interrogate/SKILL.md) | Keep adversarial reproduction and verification, with a complete single-agent path and explicit incomplete evidence. |
| [show-me-your-work](skills/show-me-your-work/SKILL.md) | Preserve the TSV helper/template; use appropriate artifact locations and available evidence, without Cursor transcript paths or mandatory cross-model review. |
| [no-comments](skills/no-comments/SKILL.md) | Review usefulness and accuracy; preserve rationale, suppressions, notices, and unresolved constraints instead of deleting them by default. |
| [statechart](skills/statechart/SKILL.md) | Include production tooling; remove automatic dependency installation and the exclusive renderer requirement. Preserve model-checking semantics. |
| [boundary-discipline](skills/principle-boundary-discipline/SKILL.md) | Trust established invariants, not all internal code unconditionally; retain guards when warranted. |
| [build-the-lever](skills/principle-build-the-lever/SKILL.md) | Make tool creation proportional to repeatability and verification value, without requiring a new artifact for every nontrivial task. |
| [fix-root-causes](skills/principle-fix-root-causes/SKILL.md) | Bound repairs to authorized scope and preserve legitimate workarounds and rationale. |
| [guard-the-context-window](skills/principle-guard-the-context-window/SKILL.md) | Use bounded reads and evidence summaries; delegation is optional. |
| [never-block-on-the-human](skills/principle-never-block-on-the-human/SKILL.md) | Base autonomy on scope and existing authorization, with genuine missing decisions left pending. |
| [redesign-from-first-principles](skills/principle-redesign-from-first-principles/SKILL.md) | Use redesign to reason about a requirement, without automatically expanding the assignment into a rewrite. |
| [sequence-verifiable-units](skills/principle-sequence-verifiable-units/SKILL.md) | Use the actual baseline; remove unconditional rebasing and automatic commit requirements. |
| [improve-animations](skills/improve-animations/SKILL.md) | Keep analysis and planning separate from execution; retain audit criteria and adapt plan destinations and selection behavior. |
| [diagnosing-bugs](skills/diagnosing-bugs/SKILL.md) | Keep feedback loops and falsifiable hypotheses, while allowing evidence-led investigation without a deterministic reproduction. Retain the optional human-driven loop template. |
| [code-review](skills/code-review/SKILL.md) | Use one agent, review requirements and standards, combine findings, and prioritize actionable defects. |
| [improve-codebase-architecture](skills/improve-codebase-architecture/SKILL.md) | Deliver an evidence-backed survey without required companion skills or automatic glossary/ADR edits; retain an optional HTML scaffold. |

The five first-batch reference snapshots were removed. Their consumers now link to the canonical tuned principles, avoiding conflicting copies. The transitive encode-lessons snapshot is no longer needed.

### Script validation

- Statechart was exercised with Node 26.13.0, TLC 1.7.4, and Temurin Java 25 in a temporary tool directory. A three-state model passed; a second configuration failed the expected invariant with a two-step counterexample. Both emitted a report and Mermaid chart.
- The runner refused an existing nonempty output directory. Missing dependencies were checked separately and did not trigger installation.
- The log helper was tested with tabs, line breaks, and formula-leading cells, confirming a six-column TSV and escaped prefixes.
- Shell syntax was checked for the statechart launcher, decision logger, and debugging loop template.

These are focused smoke checks, not the upstream statechart regression suite. The upstream test corpus and test-only dependency were intentionally omitted from the runtime skill package. Animation recipes, interactive debugging sessions, and agent behavior have not been exercised by this import.

## Fourth batch: Impeccable command extraction

This batch adds the 17 selected commands as individual skills, bringing the library to 72. All are adapted from Impeccable commit `ec229b48547f24685ffb22aa51c462c5ae27908c`; none is presented as an unchanged upstream skill. Each changed file identifies its pinned source and links here. The full Apache-2.0 notice is consolidated in [third-party-notices.md](third-party-notices.md#impeccable).

The upstream files are command fragments, so extraction requires more than frontmatter. The local workflows replace template placeholders, mandatory command-runner calls, live controls, detector and snapshot storage, required interviews, and unavailable companion commands. They use available project tools and evidence directly. The command runner and its scripts, platform-specific iOS/Android references, and their third-party-derived content are not bundled.

| Skill | Extraction and tuning |
| --- | --- |
| [bolder](skills/bolder/SKILL.md) | Preserve scoped amplification within the existing brand; remove direction-round and command-handoff dependencies. |
| [quieter](skills/quieter/SKILL.md) | Retain visual and motion restraint without fixed saturation percentages, accent quotas, or blanket easing prohibitions. Preserve contrast and hierarchy. |
| [distill](skills/distill/SKILL.md) | Simplify presentation and steps while preserving capabilities; replace universal font/option/layout quotas with task-based decisions. |
| [colorize](skills/colorize/SKILL.md) | Keep semantic color strategy, themes, and measured contrast; remove live-mode parameters and link primary accessibility criteria with their scope and exceptions. |
| [typeset](skills/typeset/SKILL.md) | Keep role hierarchy, reading, wrapping, and delivery checks; replace the detector and live-mode controls with available source/browser evidence. |
| [layout](skills/layout/SKILL.md) | Keep grouping, rhythm, adaptation, and input-order checks; use the project's spacing system rather than prescribing a new base unit. |
| [overdrive](skills/overdrive/SKILL.md) | Retain technical ambition, progressive enhancement, cleanup, and runtime verification. Remove the scripted banner and stale browser-support matrix; use an already settled direction without repeat approval. |
| [critique](skills/critique/SKILL.md) | Provide a complete single-agent review with design assessment before mechanical checks. Retain evidence-based scoring and user perspectives in two focused references; distinguish inapplicable from unverified criteria and expose the denominator. Remove mandatory agents, overlays, snapshots, and closing questions. |
| [audit](skills/audit/SKILL.md) | Keep five technical dimensions and a report-only contract. Tie defects to requirements and observed consequences; absence of memoization, dark mode, or tokens is not itself a failure. Scores do not certify compliance. |
| [polish](skills/polish/SKILL.md) | Keep whole-path triage and verification; consume relevant existing findings without requiring snapshot storage or hooks. No implicit redesign, commit, or publishing. |
| [harden](skills/harden/SKILL.md) | Keep realistic adverse states, localization, gesture cancellation, recovery, and lifecycle checks. Use controlled fixtures, preserve meaningful text, avoid raw backend messages and unsafe retries, and keep backend expansion outside incidental UI work. |
| [adapt](skills/adapt/SKILL.md) | Keep context-specific adaptation and a responsive reference. Remove compulsory breakpoints, table-to-card conversion, and desktop-first rewrites; distinguish emulation from physical input evidence. |
| [optimize](skills/optimize/SKILL.md) | Retain measured bottleneck diagnosis and comparable verification. Remove automatic memoization, architectural substitutions, static support assumptions, and optimization recipes with no demonstrated cause. |
| [onboard](skills/onboard/SKILL.md) | Keep first value, distinct empty states, skip/replay, and account-aware progress. Reuse components and analytics conventions; remove mandatory illustrations, tour libraries, and invented success metrics. |
| [shape](skills/shape/SKILL.md) | Return a brief with relevant states, boundaries, and decisions. Replace mandatory interview/confirmation rounds and missing workshop dependency with evidence-led planning. A standalone planning request stops at the brief; a larger authorized task may continue. |
| [init](skills/init/SKILL.md) | Write or update the actual product authority using a focused outline. Remove compulsory interviews, web defaults, schema markers, image-workflow questions, and hidden runtime/live configuration. |
| [document](skills/document/SKILL.md) | Capture the observed design system using a focused outline. Preserve actual token names and useful existing documentation; remove mandatory metaphors, sidecars, seed workshops, and unverified external-format compatibility claims. |

### Validation and limits

The new entry points use standard `name` and `description` metadata. Five supporting references are adapted from the same pinned command sources; the manifest records their separate provenance and reversible edits. Source integrity checks recover each original file and compare both SHA-256 and Git blob IDs. The existing library validator also checks names, catalog coverage, notices, and local links.

These are instruction packages with no new executable helpers. Static validation and review of task boundaries do not demonstrate their behavior in a live design session. Runtime scripts and the upstream Impeccable detector were not imported or executed. The earlier provider-specific metadata limitation remains for older batches; the new 17 entry points pass the bundled skill-creator validator.
