---
name: how
description: "Explain runtime behavior, architecture, ownership, and where a change belongs by tracing the relevant code."
disable-model-invocation: true
---

# How

Answer the user's actual question by tracing the relevant behavior. Keep the investigation read-only unless changes were also requested.

1. Identify the subsystem and the depth the user needs. State a reasonable interpretation if the question is ambiguous.
2. Follow a concrete entry point through data, state, calls, and effects. Read the implementation and its callers, tests, configuration, and framework wiring as needed.
3. Explain ownership: which module makes each decision, what it receives, what it returns, and where a change belongs.
4. Check important claims against current code. Distinguish a path you read from behavior you actually ran. Use [why](../why/SKILL.md) for historical intent rather than inventing motivation from today's code.

For a narrow question, investigate and explain directly. For a large subsystem, split the investigation into bounded angles; use delegated read-only exploration only when available and authorized. Reconcile conflicting findings against the code yourself.

Use the [explanation guide](references/explainer-prompt.md) when an overview needs structure. Include only sections that help: a plain definition, runtime flow, important concepts, a small file map, and non-obvious constraints. A diagram is optional when it clarifies relationships. Cite the relevant files; do not replace the explanation with a symbol inventory.
