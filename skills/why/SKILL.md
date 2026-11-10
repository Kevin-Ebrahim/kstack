---
name: why
description: "Investigate the reasons behind a design or decision using relevant history and available sources, separating evidence from inference."
disable-model-invocation: true
---

# Why

Find the forces that led to a design. Code shows current behavior; it does not establish the author's intent.

Read [epistemics](references/epistemics.md) and keep its confidence distinctions throughout.

## Anchor the question

Identify the code, decision, or threshold in question. Read the current implementation and surrounding contracts. Use focused git history and blame to find substantive changes, then inspect relevant commit messages, PR discussions, issues, and design records when available. A missing git history or unavailable connector is a coverage limit, not grounds for inventing a rationale.

## Follow the evidence

Start with the most likely direct source. Widen only when the answer remains uncertain or another source could change the conclusion. Use [source playbooks](references/source-playbook.md) as examples for relevant available tools; do not require every source category or a particular service.

Keep retrieval read-only, including analytics queries. Follow actual task permissions for each source. Do not send messages, change issues, or run production experiments as part of this investigation.

Perform the investigation yourself by default. If a large inquiry benefits from authorized delegation, give each investigator a bounded evidence question and reconcile their findings against original sources. No fixed models or agent modes are required.

## Explain

Lead with the best-supported answer. Separate direct evidence, supported conclusions, interpretations, competing explanations, and unknowns as needed. Cite sources near claims and identify contradictions. State the meaningful sources consulted and unavailable evidence, without an exhaustive checklist of irrelevant systems.

If the user is planning a change, translate the findings into what must be preserved, what can change, and unresolved risks. Do not treat a missing rationale as proof that the behavior can be removed.
