# kstack

A personal library of skills for clear communication, deliberate engineering, and polished interfaces.

The library contains **33 skills**: 22 from pstack, 10 from Emil Kowalski, and 1 from Matt Pocock. The first 24 preserve upstream workflows; the next 9 have focused integration changes recorded in [adaptations.md](adaptations.md). The full selection remains in [skill-selection.txt](skill-selection.txt).

## Organization

```text
skills/
  <upstream-skill-name>/
    SKILL.md                 Skill entry point
    RECIPES.md / ...          Supporting files, where provided upstream
    references/upstream/     Referenced principles outside this batch, where needed
scripts/
  validate-skills.py         Check the catalog, source integrity, and local links
upstream.json                Pinned sources and file-level provenance
third-party-notices.md        Consolidated upstream notices
```

Skill folders share one level so upstream sibling links continue to work. The catalog below groups them by purpose. Original skill names, including pstack's `principle-` prefix, are preserved.

## Communication and handoffs · 6

| Skill | Purpose |
| --- | --- |
| [bro](skills/bro/SKILL.md) | Restate the last response in plain language. |
| [in-your-own-words](skills/in-your-own-words/SKILL.md) | Restate the user's goal and underlying problem. |
| [sharpen](skills/sharpen/SKILL.md) | Refine a task without expanding its scope. |
| [unslop](skills/unslop/SKILL.md) | Remove formulaic language while preserving meaning. |
| [ketchup](skills/ketchup/SKILL.md) | Catch up on work and decisions using available visualization tools. |
| [handoff](skills/handoff/SKILL.md) | Prepare a portable handoff in the OS temporary directory. |

## Testing and measurement · 2

| Skill | Purpose |
| --- | --- |
| [tdd](skills/tdd/SKILL.md) | Establish a practical failing regression check before fixing a bug. |
| [benchmark-checklist](skills/benchmark-checklist/SKILL.md) | Validate measurements before reporting a performance result. |

## TypeScript · 1

| Skill | Purpose |
| --- | --- |
| [typescript-best-practices](skills/typescript-best-practices/SKILL.md) | Apply TypeScript guidance within repository conventions, with [patterns](skills/typescript-best-practices/references/patterns.md). |

## Engineering principles · 14

The links use the selection's shorter labels; each folder and frontmatter name retains the upstream `principle-` prefix.

| Principle | Purpose |
| --- | --- |
| [attack-the-premise](skills/principle-attack-the-premise/SKILL.md) | Test the assumption shared by repeated failed fixes. |
| [exhaust-the-design-space](skills/principle-exhaust-the-design-space/SKILL.md) | Compare competing prototypes for unfamiliar decisions. |
| [experience-first](skills/principle-experience-first/SKILL.md) | Prioritize the experience of the people using the work. |
| [explain-the-number](skills/principle-explain-the-number/SKILL.md) | Establish what a measurement captures before trusting it. |
| [foundational-thinking](skills/principle-foundational-thinking/SKILL.md) | Choose data structures and sequence foundational work deliberately. |
| [laziness-protocol](skills/principle-laziness-protocol/SKILL.md) | Make the smallest effective change and avoid unnecessary abstraction. |
| [make-operations-idempotent](skills/principle-make-operations-idempotent/SKILL.md) | Make retries and partial runs converge safely. |
| [minimize-reader-load](skills/principle-minimize-reader-load/SKILL.md) | Reduce indirection and hidden state. |
| [model-the-domain](skills/principle-model-the-domain/SKILL.md) | Represent domain concepts and valid states explicitly. |
| [prove-it-works](skills/principle-prove-it-works/SKILL.md) | Verify the actual result before declaring completion. |
| [separate-before-serializing-shared-state](skills/principle-separate-before-serializing-shared-state/SKILL.md) | Eliminate unnecessary shared mutation before adding coordination. |
| [subtract-before-you-add](skills/principle-subtract-before-you-add/SKILL.md) | Remove obsolete complexity before building on it. |
| [test-behavior-not-implementation](skills/principle-test-behavior-not-implementation/SKILL.md) | Test observable contracts rather than internal structure. |
| [type-system-discipline](skills/principle-type-system-discipline/SKILL.md) | Model valid states using the language and repository's established types. |

## Animation and interaction · 9

| Skill | Purpose | Bundled reference |
| --- | --- | --- |
| [animate-expo](skills/animate-expo/SKILL.md) | Implement animation and gestures for React Native and Expo. | [Recipes](skills/animate-expo/RECIPES.md) |
| [review-animations](skills/review-animations/SKILL.md) | Review motion against Emil Kowalski's standards. | [Standards](skills/review-animations/STANDARDS.md) |
| [find-animation-opportunities](skills/find-animation-opportunities/SKILL.md) | Identify useful motion opportunities without implementing them. | Included in the entry point |
| [animation-vocabulary](skills/animation-vocabulary/SKILL.md) | Find the name for a described motion effect. | Glossary in the entry point |
| [choreograph](skills/choreograph/SKILL.md) | Coordinate timing and relationships between moving elements. | [Recipes](skills/choreograph/RECIPES.md) |
| [animate](skills/animate/SKILL.md) | Build web motion using the existing component stack. | [Recipes](skills/animate/RECIPES.md) |
| [gestures](skills/gestures/SKILL.md) | Build interruptible drag, swipe, and sheet interactions. | Included in the entry point |
| [remove-animations](skills/remove-animations/SKILL.md) | Remove unnecessary motion and perform authorized cleanup. | Included in the entry point |
| [animation-performance](skills/animation-performance/SKILL.md) | Diagnose stutter and apply fixes when requested. | Included in the entry point |

## UI stress testing · 1

| Skill | Purpose | Bundled reference |
| --- | --- | --- |
| [break-ui](skills/break-ui/SKILL.md) | Exercise a component with realistic difficult data and report failures. | [Worst-case catalog](skills/break-ui/CATALOG.md) |

## Upstream sources

| Source | Pinned commit | License |
| --- | --- | --- |
| [pstack](https://github.com/cursor/plugins/tree/de8ee15dd1194627d21eb5fcd41cb1873208dabb/pstack) | `de8ee15dd1194627d21eb5fcd41cb1873208dabb` | [MIT, Lauren Tan](third-party-notices.md#pstack) |
| [Emil Kowalski's skills](https://github.com/emilkowalski/skills/tree/715c1807e08c497cfd1dc4feb450a2a3300ef2a9) | `715c1807e08c497cfd1dc4feb450a2a3300ef2a9` | [MIT, Emil Kowalski](third-party-notices.md#emil-kowalski) |
| [Matt Pocock's skills](https://github.com/mattpocock/skills/tree/4ae2317ddb22b046e26455e4f9c9b3aaaf62212d) | `4ae2317ddb22b046e26455e4f9c9b3aaaf62212d` | [MIT, Matt Pocock](third-party-notices.md#matt-pocock) |

These are the versions reviewed for the imports. The first batch preserves upstream text and frontmatter except for local link destinations. The second batch records its targeted text edits alongside link changes in [upstream.json](upstream.json); validation reverses those edits to recover the original upstream bytes. The manifest records each file's upstream path, Git blob ID, original SHA-256, imported SHA-256, and any link rewrites. Original upstream notices are consolidated in [third-party-notices.md](third-party-notices.md); include the relevant notice when redistributing skill folders.

### References outside the first batch

Two selected skills have relative links to unselected skills. Their referenced documents are bundled locally, with their own links resolved recursively:

| Selected skill | Supporting upstream documents |
| --- | --- |
| `principle-attack-the-premise` | `principle-build-the-lever`, `principle-fix-root-causes`, `principle-redesign-from-first-principles`, and the transitively referenced `principle-encode-lessons-in-structure` |
| `principle-minimize-reader-load` | `principle-guard-the-context-window` |

These five documents live under the owning skill's `references/upstream/`, with `.md` filenames rather than `SKILL.md`. They are supporting snapshots, not additional skill entry points or tuned versions. The original advice in them is retained.

The measurement principle now links directly to the adapted `benchmark-checklist`; its old reference snapshot was removed. Upstream still names companion workflows in prose: `show-me-your-work` and `improve-animations` are pending later batches, while `prototype` and `emil-design-eng` are outside the current selection. These mentions do not mean those workflows are installed or available.

## Using and maintaining the library

This repository stores the library; it does not install or enable skills in an agent. Keep the collection together when consuming it because some principles link to sibling skills. Individual folders with sibling links are not standalone distributions.

Invocation settings are preserved as supplied upstream. In particular, all 22 pstack entry points, `review-animations`, and `handoff` retain `disable-model-invocation: true`. Provider-specific installation or metadata conversion can be added separately without changing these source imports.

The bundled Codex skill-creator validator rejects upstream metadata in these 24 files (`disable-model-invocation`, and `argument-hint` for handoff); the other 9 entry points pass it. The library validator below accepts and type-checks this retained field. This import does not claim Codex-specific packaging validation.

Validate with Python 3 and PyYAML installed:

```sh
python scripts/validate-skills.py
```

The check verifies skill names and descriptions, manifest coverage, source notices, relative Markdown links, imported checksums, and reconstruction of the original upstream Git blobs. It does not execute recipes or prove agent behavior, library API compatibility, or provider-specific skill discovery.

For an update, review the new upstream commit first, bring across the full supporting files, record any intentional local changes, update the source metadata, and rerun validation. Do not refresh from a moving branch without updating the pinned provenance.
