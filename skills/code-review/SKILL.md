---
name: code-review
description: "Review a diff against requirements and repository standards using independent agents, prioritizing actionable, evidence-backed findings."
---

# Code review

Review the requested diff using independent agents for requirements and repository standards, then validate and prioritize their actionable findings.

## Establish scope

Honor the supplied commit, branch, PR, or working-tree scope. Resolve the base before reviewing. For a branch comparison, use the merge base when appropriate; for a literal commit-to-commit request, use those endpoints. Include staged and unstaged changes when reviewing work in progress. State the comparison and distinguish an empty diff from a completed substantive review.

Find requirements in the user's request, relevant issues, specs, commits, and project documents. Use available repository or tracker tools; no setup skill is required. Ask only when missing intent makes a meaningful judgment impossible. Otherwise report the coverage limit and continue.

Read applicable repository instructions and standards. Repository conventions override generic preferences.

## Review

When delegation is available and permitted, launch two independent review agents in parallel: one checks the diff against the user's requirements and relevant specs; the other checks it against repository instructions and standards. Request `gpt-6.1-sol` with `xhigh` reasoning for both where supported. Give each the exact comparison, relevant context and instructions to return evidence-backed findings with file locations and concrete consequences. Keep the review read-only and do not share one agent's findings with the other before their independent reviews.

If the requested model or reasoning level is unavailable, use the available agent configuration and disclose the substitution. If delegation is unavailable or prohibited, review both perspectives directly and disclose that the review was performed without subagents. Never claim independent review that did not happen.

Trace changed behavior through callers, data boundaries, error paths, state transitions, and tests. Look for missing requirements, incorrect behavior, compatibility regressions, and unintended scope changes.

Use structural smells such as duplication, speculative abstractions, confusing names, and excessive indirection as investigation prompts. Report them only when they produce a concrete actionable problem; do not turn taste into a mandatory finding.

The coordinating agent checks the actual code and evidence behind the agents' findings, resolving disagreements and removing unsupported or duplicate claims. Validate important claims against code or a focused check when authorized. Separate introduced defects from pre-existing issues. Avoid duplicating findings already enforced by tooling unless the change bypasses or breaks that enforcement.

## Report

Lead with findings ordered by severity and user impact. Each finding names the location, triggering condition, consequence, requirement or standard affected, and supporting evidence. Merge duplicates across the standards and requirements perspectives.

If no actionable findings survive, say so and describe material coverage or testing gaps. Do not imply that an untested change is proven correct. Do not implement fixes or post the review externally unless requested.
