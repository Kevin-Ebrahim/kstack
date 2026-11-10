---
name: critique
description: "Produce an evidence-backed, scored UX and visual design critique of a specific interface without editing the application."
---

# Critique

Review how well a surface supports its audience and purpose. Resolve a concrete page, flow, component, screenshot, or source target and record the states and viewports inspected.

## Assess design before mechanical findings

Read relevant product context and inspect the rendered experience when available. First record a design assessment: hierarchy, composition, typography, color, discoverability, information architecture, task flow, feedback, and product-specific character. Then inspect source, browser behavior, and available automated checks.

Delegate independent critique passes to subagents when delegation is available and permitted. Give each the same target and relevant context, with distinct lenses: visual design and hierarchy; usability and task flow; and accessibility, responsive states, and edge cases. Ask for observed evidence, user impact, and concrete improvements. Coordinate browser access to avoid interfering with shared state. The lead should inspect the experience too, verify actionable findings, reconcile disagreements, and synthesize one prioritized report and scoring assessment. If delegation is unavailable or prohibited, perform the same review directly and disclose that limitation.

Check the primary journey from arrival through completion and recovery. Keep information needed for a decision visible; examine competing choices and unnecessary recall without treating a fixed number of options as a universal usability limit.

Read the [heuristic scoring guide](references/heuristics.md) to score applicable criteria. Use the [perspective prompts](references/perspectives.md) when different user contexts could expose missed problems. These are review lenses, not substitutes for observed user research.

## Report

- Identify the target, method, evidence, and limits. Screenshot-only review cannot verify behavior, semantics, or measured performance.
- Give a concise assessment of what works and whether the design suits this product.
- Score the ten heuristics from 0–4 with evidence. Use `n/a` for genuinely inapplicable criteria and `unverified` where evidence is insufficient. Show coverage and the actual denominator, not an automatic /40. Do not let a high average hide a blocking issue.
- Prioritize findings: P0 blocks the task; P1 causes major difficulty; P2 causes a smaller problem with a workaround; P3 is optional refinement.
- For each finding give location/state, observed problem, user consequence, and a concrete improvement. Separate taste preferences and hypotheses from defects.
- Recommend the most useful next action. Ask only when a material unresolved choice changes that recommendation.

Keep the application unchanged. Deliver in chat unless the user or project workflow requests an artifact; no automatic `.impeccable` snapshot or trend database. Stop any temporary server you started solely for the review. Use [audit](../audit/SKILL.md) for a technical quality assessment and [polish](../polish/SKILL.md) for authorized fixes.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/critique.md) (Paul Bakaus, Apache-2.0).
