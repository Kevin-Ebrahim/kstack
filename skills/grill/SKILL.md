---
name: grill
description: "Interview the user to expose unresolved decisions in a plan, design, or idea. Use when the user asks to be grilled or wants a structured discovery interview."
---

# Grill

Interview the user until the decisions that materially affect the plan are clear. Challenge vague answers with concrete scenarios and explain the tradeoffs behind your recommendations.

## Ground the interview

Read the request, prior answers, and relevant project context first. Establish the intended outcome and what is already settled. Find facts through available code, docs, and tools; ask the user for decisions and information you cannot reasonably obtain yourself. Work directly unless authorized delegation adds value.

Maintain a working **design tree**: unresolved decisions and the decisions that depend on them. Focus on choices that change scope, behavior, constraints, or how success will be verified. State low-impact assumptions instead of making every detail a question.

## Ask in rounds

The **frontier** contains decisions whose prerequisites are settled. Ask a small round from that frontier, grouping independent questions the user can answer together. Save questions that depend on an open answer for a later round.

Number the questions. Give each one a clear decision, a brief explanation of why it matters, and your recommended answer with its main tradeoff. Phrase questions neutrally so the user can disagree easily.

Wait for the user's answers before advancing dependent questions. Incorporate their answers, resolve contradictions, and recompute the frontier. An unanswered question stays open; silence does not accept a recommendation. Continue independent fact-finding while waiting when useful.

Use specific examples to test fuzzy terms and boundaries: who can do what, what happens on failure, which cases belong in scope, and what observable result would count as success. Revisit a settled decision only when new evidence or a later answer changes its consequences.

## Finish

Stop when the decisions that materially affect scope, behavior, constraints, and verification are settled. Leave speculative future branches and reversible details as explicit assumptions or deferred work. If the user ends the interview early, summarize the remaining decisions and their consequences.

Give a concise account of the agreed goal, scope, key decisions, success criteria, and any assumptions or unresolved blockers. Distinguish the user's choices from your recommendations.

An interview-only request ends with that summary. If implementation was already requested, continue within that authorization once blocking decisions are answered; the interview adds no separate approval step. Keep unresolved material decisions pending rather than silently choosing for the user.

Adapted from Matt Pocock's [grilling](https://github.com/mattpocock/skills/blob/5863806dd4e15c63174bee4e7515a4256792ecfa/skills/productivity/grilling/SKILL.md) ([MIT notice](../../third-party-notices.md#matt-pocock)).
