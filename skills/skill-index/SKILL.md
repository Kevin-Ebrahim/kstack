---
name: skill-index
description: "Choose relevant kstack skills when planning substantial work, selecting a workflow, or answering which skills fit a task. Resolve overlapping skills and suggest an appropriate order. Skip trivial tasks and tasks whose skill is already settled."
---

# Skill index

Match the user's intended outcome to the smallest useful set of skills in this library.

## Select

1. Identify the task's subject, desired result, platform, and scope: explanation, planning, review, implementation, or a combination. Use the conversation and project context before asking for information.
2. Read the relevant section of the [catalog](references/catalog.md). Search its headings or task words rather than loading every skill. Use [choosing skills](references/choosing-skills.md) when candidates overlap or a sequence would help.
3. Choose one primary workflow. Add supporting skills only for a distinct requirement or a concrete decision the primary workflow does not cover. Engineering principles are targeted guidance, not a checklist to load in full.
4. Open the chosen `SKILL.md` files and check their actual instructions, applicability, invocation restrictions, and prerequisites. Catalog summaries help select; the selected skill supplies the workflow. Honor explicit-only policies rather than using this index to bypass them.

Prefer a skill the user explicitly selected when it fits. Explain a material mismatch instead of silently substituting another. If no skill adds value, proceed without one.

## Recommend or apply

- **Asked which skills fit:** give the recommended skill names, one task-specific reason for each, and an order only if their outputs depend on one another. Link to the skill files. Stop at the recommendation unless execution was also requested.
- **Asked to do the work:** briefly name the useful selection when it helps the user follow the approach, then carry out the authorized task using the selected instructions. Recommend explicit-only skills when they have not been invoked; do not pause ordinary work unnecessarily.
- **Asked to plan or review:** preserve that boundary. A suggested implementation skill is a possible next step, not authorization to edit.

Select later-stage skills when the work reaches that stage. Do not preload an entire pipeline or rerun this index after every small step. Reconsider the selection when the task changes or new evidence points to a different problem.

## Resolve files

Catalog links are relative to this skill's `references` directory and point to sibling skill folders. Resolve them from the file containing the link, not from the current project directory. If this skill was symlinked, use its resolved source location when necessary to find the rest of the library.

If a listed file is missing, check the available skill locations for its exact name. State when it is unavailable and continue with an appropriate available workflow. Do not invent tools, install dependencies, or claim a skill was used without reading it.

The catalog covers kstack. Other skills exposed by the host or project may be a better match for platform-specific work; consider those descriptions too. Do not route back into this index recursively or treat an informational mention of an absent skill as a required dependency.
