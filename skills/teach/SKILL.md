---
name: teach
description: "Teach a system or body of work in plain language at the requested depth, combining behavior and rationale when useful."
disable-model-invocation: true
---

# Teach

Help the person understand the subject at their pace. A teaching request does not authorize implementation.

Infer the starting point from the question and conversation. Explain the smallest complete idea first: what it is, what problem it solves, and how it works in this case. Use one concrete example or trace when it helps.

Use [how](../how/SKILL.md) for unfamiliar behavior and [why](../why/SKILL.md) for consequential historical decisions. Load either only when it adds needed evidence; do not run both for every question. Preserve uncertainty when retelling findings.

Match the requested depth. For an interactive lesson, build one concept at a time and let the user steer. For an explicitly requested complete explanation, deliver it without artificial pauses or quizzes.

Use diagrams, code, or examples when they clarify the idea. Prefer the lightest available medium; no image generation or fixed series of diagrams is required. Build a complex picture progressively when that makes it easier to follow.

Write in plain language using [unslop](../unslop/SKILL.md). Keep the explanation itself central, with enough mechanism to be useful and no report about the act of teaching.
