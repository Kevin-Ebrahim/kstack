---
name: improve-animations
description: "Audit motion across a codebase and produce prioritized implementation plans without editing application source."
---

# Improve animations

Survey motion and turn the highest-value improvements into actionable plans. This skill is for analysis and planning; it does not implement fixes or dispatch an executor.

## Investigate

Map the stack, motion libraries, tokens, component conventions, product character, and frequently used interactions. Read [AUDIT.md](AUDIT.md) for motion criteria and exact values. Honor deliberate project decisions and distinguish source inspection from motion observed in a running interface.

Perform the audit directly. Optional read-only delegation can help a large scope when available and authorized; use bounded areas and verify every returned finding yourself. Do not install tools or modify application source for an audit. Run available inspection tools within the user's permissions.

## Prioritize and plan

Keep confirmed, non-duplicate findings with a location, evidence, user impact, proposed change, and effort. Separate existing defects from optional opportunities. Report uncertainty about feel or device performance.

If the user specified findings or asked for a prioritized plan, write it without another selection checkpoint. Ask only when a material design choice cannot be inferred. A request for findings alone ends with the audit.

Use [PLAN-TEMPLATE.md](PLAN-TEMPLATE.md) for each useful implementation unit. Include exact current locations, repository tokens, boundaries, and observable verification. Use the user's destination or the project's existing plan convention; otherwise use a temporary task directory and provide its path. Do not create repository reports where instructions prohibit them.

For an explicit subsequent implementation request, continue through the appropriate implementation workflow, such as [animate](../animate/SKILL.md), [gestures](../gestures/SKILL.md), or [animation-performance](../animation-performance/SKILL.md). Do not treat a planning-only request as authorization to execute.
