---
name: principle-sequence-verifiable-units
description: "Sequence substantial work into independently checkable stages using the actual baseline and the repository delivery workflow."
disable-model-invocation: true
---

# Sequence verifiable units

Break substantial work into small coherent units that each end with a meaningful check. Address risky unknowns early and avoid building on an unexplained failure.

Establish the actual branch, working tree, and relevant pre-existing failures before editing. Do not rebase, switch branches, discard work, or change history merely to establish a baseline.

For each unit: record the relevant starting state, make the scoped change, run its useful check, and proceed when the result is understood. Batch mechanical changes when the same reliable check covers the batch; avoid ceremony for each trivial edit.

Order delivery so a reviewer can follow it: baseline before treatment, foundations before dependents, a regression demonstration before its fix when practical. Commit and PR boundaries follow the user's workflow; no automatic commits or deliberately failing standalone commits are required.

Use [prove-it-works](../principle-prove-it-works/SKILL.md) for meaningful evidence and [build-the-lever](../principle-build-the-lever/SKILL.md) when repeatable tooling helps.
