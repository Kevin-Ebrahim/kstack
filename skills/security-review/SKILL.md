---
name: security-review
description: "Review code and configuration for security-relevant API misuse and insecure defaults, and assess dependency supply-chain risks with evidence and explicit coverage limits. Use for a security review or targeted security audit; not a routine UI quality review."
---

# Security review

Combine three perspectives: APIs that make insecure use easy, defaults that weaken actual enforcement, and dependency risks supported by measured metadata. A review reports findings; apply fixes only when the request includes remediation. This is not a claim of exhaustive penetration testing, secret scanning, or license compliance.

## Establish scope and trust boundaries

Resolve the repository, diff, service, or named paths from the request. Read relevant architecture, configuration wrappers, manifests, deployment definitions, and existing security expectations. Identify protected data/actions, who can influence inputs or configuration, and where trust is enforced.

Honor a narrow target. Tests, examples, or development tools explicitly named by the user remain in scope, but distinguish their exposure from production. Do not infer that a filename makes a path safe or that a permissive setting makes it exploitable.

Use read-only inspection and controlled local checks by default. Do not install or execute audited dependencies, probe live third-party systems, rotate secrets, change access, or publish findings as a side effect. Redact discovered credentials rather than echoing them into a report.

## Run the relevant passes

| Pass | Load when | Method |
| --- | --- | --- |
| [API and configuration design](references/api-design.md) | Security choices, parsers, authentication, authorization, crypto, or public interfaces are in scope. | Examine defaults, misuse paths, ambiguous types, edge values, and ignored failures; trace to actual enforcement. |
| [Insecure defaults](references/insecure-defaults.md) | Runtime configuration, deployment, bootstrap, permissions, or fallback behavior is in scope. | Gather candidates in six categories, then actively try to refute each with surrounding code and deployment evidence. |
| [Dependency risks](references/supply-chain.md) | Dependencies or a general repository security review are in scope. | Use the bundled metadata collector for supported ecosystems; preserve version identity, measurements, and unassessable results. |

Work directly in one agent. Load only the references needed for the selected pass. For a general review, consider all three passes and state which were applicable, inspected, unavailable, or omitted. A source-only request does not require a dependency scan.

## Validate and classify

For every candidate establish the controlling actor, input or default, reachable call path, security decision, resulting access or consequence, and relevant mitigating controls. Use a minimal local demonstration where it improves confidence; do not claim exploitation from a text match.

Classify results as confirmed, refuted with evidence, or unresolved with a specific missing fact. Incomplete tracing is unresolved, not proof of safety. Distinguish an exploitable deployment defect from a misuse-prone API, a hardening opportunity, and a dependency risk signal. Neither documentation nor a deployment override automatically settles the question.

Deduplicate findings with the same root cause and consequence while preserving distinct security outcomes. Rank by plausible impact, reachability, and required privileges. A default is not automatically critical, and a single publisher, archived repository, or install script is not proof of compromise.

## Deliver

Lead with actionable findings in severity order. Each finding needs a location or package/version, evidence, prerequisites, impact, confidence, and a concrete mitigation with compatibility costs. Include a targeted verification step where useful.

Separate observed facts from inference and recommendations. For dependencies retain the collector's coverage table, version-source labels, advisory identifiers, collection date, and unassessable reasons. Verify current advisories and proposed fixed versions before recommending an upgrade.

End with scope, checks performed, unresolved candidates, and important coverage gaps. If no findings were confirmed, say so within the inspected scope; a failed tool or zero assessed dependencies is not a clean result. Deliver in chat unless a report artifact is requested or established by the project workflow. Collector artifacts belong outside the audited repository by default.

> Adapted by kstack from [Trail of Bits upstream](https://github.com/trailofbits/skills/blob/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff/plugins/sharp-edges/skills/sharp-edges/SKILL.md). This adapted material is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [third-party notices](../../third-party-notices.md#trail-of-bits).
