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
