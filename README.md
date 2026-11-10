# kstack

A personal library of skills for clear communication, deliberate engineering, and polished interfaces.

The first batch contains **24 skills**: 18 from pstack and 6 from Emil Kowalski. The full selection remains in [skill-selection.txt](skill-selection.txt); entries outside this batch have not been imported as skills.

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

## Communication · 4

| Skill | Purpose |
| --- | --- |
| [bro](skills/bro/SKILL.md) | Restate the last response in plain language. |
| [in-your-own-words](skills/in-your-own-words/SKILL.md) | Restate the user's goal and underlying problem. |
| [sharpen](skills/sharpen/SKILL.md) | Refine a task without expanding its scope. |
| [unslop](skills/unslop/SKILL.md) | Remove formulaic language while preserving meaning. |

## Testing · 1

| Skill | Purpose |
| --- | --- |
| [tdd](skills/tdd/SKILL.md) | Establish a practical failing regression check before fixing a bug. |

## Engineering principles · 13

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

## Animation and interaction · 5

| Skill | Purpose | Bundled reference |
| --- | --- | --- |
| [animate-expo](skills/animate-expo/SKILL.md) | Implement animation and gestures for React Native and Expo. | [Recipes](skills/animate-expo/RECIPES.md) |
| [review-animations](skills/review-animations/SKILL.md) | Review motion against Emil Kowalski's standards. | [Standards](skills/review-animations/STANDARDS.md) |
| [find-animation-opportunities](skills/find-animation-opportunities/SKILL.md) | Identify useful motion opportunities without implementing them. | Included in the entry point |
| [animation-vocabulary](skills/animation-vocabulary/SKILL.md) | Find the name for a described motion effect. | Glossary in the entry point |
| [choreograph](skills/choreograph/SKILL.md) | Coordinate timing and relationships between moving elements. | [Recipes](skills/choreograph/RECIPES.md) |

## UI stress testing · 1

| Skill | Purpose | Bundled reference |
| --- | --- | --- |
| [break-ui](skills/break-ui/SKILL.md) | Exercise a component with realistic difficult data and report failures. | [Worst-case catalog](skills/break-ui/CATALOG.md) |

## Upstream sources

| Source | Pinned commit | License |
| --- | --- | --- |
| [pstack](https://github.com/cursor/plugins/tree/de8ee15dd1194627d21eb5fcd41cb1873208dabb/pstack) | `de8ee15dd1194627d21eb5fcd41cb1873208dabb` | [MIT, Lauren Tan](third-party-notices.md#pstack) |
| [Emil Kowalski's skills](https://github.com/emilkowalski/skills/tree/715c1807e08c497cfd1dc4feb450a2a3300ef2a9) | `715c1807e08c497cfd1dc4feb450a2a3300ef2a9` | [MIT, Emil Kowalski](third-party-notices.md#emil-kowalski) |

These are the versions reviewed for this batch. Imports preserve upstream text and frontmatter, except for local Markdown link destinations recorded in [upstream.json](upstream.json). The manifest records each file's upstream path, Git blob ID, original SHA-256, imported SHA-256, and any link rewrites. Original upstream notices are consolidated in [third-party-notices.md](third-party-notices.md); include the relevant notice when redistributing skill folders.

### References outside the first batch

Three selected skills have relative links to unselected skills. Their referenced documents are bundled locally, with their own links resolved recursively:

| Selected skill | Supporting upstream documents |
| --- | --- |
| `principle-attack-the-premise` | `principle-build-the-lever`, `principle-fix-root-causes`, `principle-redesign-from-first-principles`, and the transitively referenced `principle-encode-lessons-in-structure` |
| `principle-explain-the-number` | `benchmark-checklist` |
| `principle-minimize-reader-load` | `principle-guard-the-context-window` |

These six documents live under the owning skill's `references/upstream/`, with `.md` filenames rather than `SKILL.md`. They are supporting snapshots, not additional skill entry points or tuned versions. The original advice in them is retained.

Upstream also names companion workflows in prose. `show-me-your-work`, `animate`, `improve-animations`, and `remove-animations` are pending later batches. `prototype` and `emil-design-eng` are outside the current selection. The benchmark reference mentions pstack's Opening a PR, Perf issue, and Hillclimb playbooks, which are not bundled. Those mentions do not mean the workflows are installed or available.

## Using and maintaining the library

This repository stores the library; it does not install or enable skills in an agent. Keep the collection together when consuming it because some principles link to sibling skills. Individual folders with sibling links are not standalone distributions.

Invocation settings are preserved as supplied upstream. In particular, all 18 pstack entry points and `review-animations` retain `disable-model-invocation: true`. Provider-specific installation or metadata conversion can be added separately without changing these source imports.

The bundled Codex skill-creator validator rejects that upstream frontmatter key in these 19 files; the other 5 entry points pass it unchanged. The library validator below accepts and type-checks this retained field. This import does not claim Codex-specific packaging validation.

Validate with Python 3 and PyYAML installed:

```sh
python scripts/validate-skills.py
```

The check verifies skill names and descriptions, manifest coverage, source notices, relative Markdown links, imported checksums, and reconstruction of the original upstream Git blobs. It does not execute recipes or prove agent behavior, library API compatibility, or provider-specific skill discovery.

For an update, review the new upstream commit first, bring across the full supporting files, record any intentional local changes, update the source metadata, and rerun validation. Do not refresh from a moving branch without updating the pinned provenance.
