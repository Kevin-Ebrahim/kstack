---
name: interrogate
description: "Run an adversarial review of a change or design and report only findings demonstrated against its intended behavior."
disable-model-invocation: true
---

# Interrogate

Try to break the named change or design. Report findings; do not apply fixes unless separately requested.

Establish intent from the user, requirements, commits, and relevant discussion. For an unspecified scope, inspect the current branch and working changes against a justified base; state the comparison. Ask only when the intended behavior cannot be reasonably established.

Look for boundary failures, invalid states, ordering, partial failure, compatibility, and plausible counterexamples. For each candidate, run a focused test or reproduction against real code when authorized. For a design, use a small prototype or probe the current implementation. Keep temporary artifacts outside the reviewed tree where practical.

Use a single agent by default. Multiple independent adversarial passes are optional when delegation is available and authorized; isolate writes and carry uncommitted changes into the reviewed snapshot.

Verify the failure yourself and distinguish pre-existing defects from regressions. Merge findings with the same root cause. A finding needs an input, exact reproduction command, observed result, and required behavior. Do not report style preferences or hypothetical future changes as defects.

If execution is unavailable, say the review is incomplete and identify the unresolved checks separately; do not promote speculation to a verified finding.

Report intent, verified findings ordered by impact, and meaningful coverage gaps. No verified findings is a valid outcome.
