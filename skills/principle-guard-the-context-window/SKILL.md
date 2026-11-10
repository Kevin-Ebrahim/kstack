---
name: principle-guard-the-context-window
description: "Keep investigations focused with bounded reads, concise evidence summaries, and optional authorized delegation."
disable-model-invocation: true
---

# Guard the context window

Preserve room for reasoning by reading only what the current decision needs.

- Locate relevant files and symbols before reading large documents or directories.
- Bound tool output and summarize large results with source pointers and important uncertainty.
- Carry forward decisions, constraints, current evidence, and remaining work; do not repeatedly reload unchanged material.
- Split large investigations into manageable phases. Keep the original goal visible across summaries.
- Delegate bounded exploration only when tools and authorization permit it and the benefit exceeds coordination cost. Focused reads and summaries are a complete single-agent alternative.

Do not hide contradictory evidence or omit a critical failure merely to shorten context.
