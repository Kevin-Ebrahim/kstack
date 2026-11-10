---
name: code-review
description: "Review a diff against requirements and repository standards with one agent, prioritizing actionable, evidence-backed findings."
---

# Code review

Use one agent to review the requested diff. Check both requirements and repository standards, then combine and prioritize actionable findings.

## Establish scope

Honor the supplied commit, branch, PR, or working-tree scope. Resolve the base before reviewing. For a branch comparison, use the merge base when appropriate; for a literal commit-to-commit request, use those endpoints. Include staged and unstaged changes when reviewing work in progress. State the comparison and distinguish an empty diff from a completed substantive review.

Find requirements in the user's request, relevant issues, specs, commits, and project documents. Use available repository or tracker tools; no setup skill is required. Ask only when missing intent makes a meaningful judgment impossible. Otherwise report the coverage limit and continue.

Read applicable repository instructions and standards. Repository conventions override generic preferences.

## Review

Trace changed behavior through callers, data boundaries, error paths, state transitions, and tests. Look for missing requirements, incorrect behavior, compatibility regressions, and unintended scope changes.

Use structural smells such as duplication, speculative abstractions, confusing names, and excessive indirection as investigation prompts. Report them only when they produce a concrete actionable problem; do not turn taste into a mandatory finding.

Validate important claims against code or a focused check when authorized. Separate introduced defects from pre-existing issues. Avoid duplicating findings already enforced by tooling unless the change bypasses or breaks that enforcement.

## Report

Lead with findings ordered by severity and user impact. Each finding names the location, triggering condition, consequence, requirement or standard affected, and supporting evidence. Merge duplicates across the standards and requirements perspectives.

If no actionable findings survive, say so and describe material coverage or testing gaps. Do not imply that an untested change is proven correct. Do not implement fixes or post the review externally unless requested.
