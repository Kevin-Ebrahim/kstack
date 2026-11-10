---
name: improve-codebase-architecture
description: "Survey architectural friction and propose evidence-backed improvements without automatically refactoring or modifying project decision records."
disable-model-invocation: true
---

# Improve codebase architecture

Find architectural improvements that make real changes easier. Focus on the area the user named, or infer useful targets from recent changes and recurring friction.

Read relevant code, tests, domain vocabulary, and existing architecture decisions. A glossary or ADR is useful when present, not a required setup dependency.

Evaluate where understanding a concept requires excessive indirection, where interfaces expose almost all implementation complexity, where ownership is unclear, and where real behavior is hard to test. Ask whether consolidating a module would hide complexity or merely move it. Do not force deeper modules when separation serves a real boundary.

Work directly in one agent unless authorized delegation adds value. For each candidate, establish current evidence, affected files, a concrete proposed direction, benefits, migration/compatibility costs, and what would verify improvement. Weight observed pain and changing areas over theoretical elegance.

Deliver prioritized candidates and a recommendation. A concise report in chat is sufficient; use diagrams when relationships help. If the user requests a visual artifact, [HTML-REPORT.md](HTML-REPORT.md) provides an optional upstream scaffold; adapt its styling to available tools and disclose network-dependent CDN assets.

A survey ends at recommendations. If the user asks to explore or implement a candidate, resolve its real constraints and use [architect](../architect/SKILL.md) as needed. Do not automatically edit glossaries, create ADRs, or start a grilling workflow.
