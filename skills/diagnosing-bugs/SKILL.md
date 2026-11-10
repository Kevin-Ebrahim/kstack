---
name: diagnosing-bugs
description: "Diagnose difficult bugs or performance regressions using reproducible evidence, ranked hypotheses, and targeted checks, with honest handling of intermittent failures."
---

# Diagnosing bugs

Establish the reported symptom, expected behavior, scope, environment, and relevant recent changes. Read existing domain terms and decisions when they affect the investigation.

## Build a useful signal

Prefer a focused existing test, CLI/HTTP reproduction, browser interaction, captured trace, or differential check. Minimize the reproduction without changing the failure being investigated.

A fast deterministic loop is valuable, not a prerequisite to all reasoning. For intermittent or inaccessible failures, inspect code, logs, dumps, and timing evidence; rank hypotheses and collect observations that distinguish them. State explicitly what has and has not reproduced. Avoid claiming a fix from a clean run that cannot detect the original failure.

Use [scripts/hitl-loop.template.sh](scripts/hitl-loop.template.sh) only when a structured human-driven reproduction is actually useful. Adapt its example steps first. Keep credentials in environment variables or user-controlled sign-in; redact secrets from commands and captured artifacts.

## Test hypotheses

Generate a small set of plausible explanations with falsifiable predictions. Share the leading possibilities when useful, then proceed on authorized checks without an artificial approval gate. Change one relevant variable at a time. Prefer debugger inspection or narrow instrumentation over broad logging.

For performance, use a comparable baseline and [benchmark-checklist](../benchmark-checklist/SKILL.md). For nondeterminism, improve observation and control inputs before increasing load; keep stress tests in an authorized environment with bounded resource use.

## Fix and verify

For diagnosis-only requests, deliver the cause or best-supported hypotheses and next checks. When fixing is authorized, make the smallest root-cause correction. Use [tdd](../tdd/SKILL.md) when a useful regression seam exists, then recheck the original scenario and relevant nearby behavior.

Remove temporary instrumentation and disposable artifacts you added unless they are needed for continued diagnosis. Ask for missing access or evidence only when necessary; continue independent investigation where possible. Report the cause, evidence, changes, verification limits, and any unresolved failure.
