---
name: plan-eng-review
description: Review an engineering plan before implementation, assessing architecture, failure modes, testing, performance, and practical tradeoffs.
---

# Engineering plan review

Review the proposed plan against the user's goal and the actual codebase before implementation. A request for review authorizes investigation and recommendations, not code changes or edits to planning documents.

## Establish scope

Read the plan and relevant project instructions, existing architecture decisions, code, and tests. Identify what already solves part of the problem, the minimum changes needed, relevant constraints, and what is explicitly outside scope. Challenge unnecessary complexity without using arbitrary file counts as a proxy for quality. If essential context is unavailable, state the limitation.

## Review the plan

Assess the areas relevant to the change:

1. **Architecture and data flow:** ownership, interfaces, dependencies, coupling, security boundaries, scaling, single points of failure, compatibility, migration, and operational or distribution needs. Trace important flows and use a diagram when it clarifies them.
2. **Implementation design:** reuse, complexity, error handling, edge cases, and whether the proposed organization fits existing conventions.
3. **Testing and failure modes:** identify observable behaviors, integration points, and realistic failure scenarios. For each important risk, assess the proposed test, error handling, and what the user or operator sees. Recommend proportionate tests using the project's existing framework.
4. **Performance:** investigate likely bottlenecks, query patterns, resource use, and caching only where relevant; distinguish evidence from hypotheses.

Prefer demonstrated risks over speculative concerns. For each meaningful finding, cite the plan or code, explain the trigger and impact, and propose a concrete remedy with its tradeoffs. Identify assumptions and unresolved decisions. Where alternatives materially affect scope or behavior, state a recommendation and ask for the user's input; continue independent review without waiting unnecessarily.

## Report

Present findings in priority order, then summarize reusable existing functionality, important test and failure coverage, explicitly deferred work, and decisions needed. Say when no issue was found or when a section could not be assessed. Keep review separate from implementation; only update a plan, decision record, or source file if the user asks.

Adapted from [pstack plan-eng-review](https://github.com/no-session/pstack/blob/9a24d1408a10a5d0df624ffc128230424e405b82/plan-eng-review/SKILL.md). The standalone workflow does not require pstack's tooling.
