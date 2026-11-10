# API and configuration misuse

Secure usage should be the easiest ordinary path. Assess misuse in the actual trust model rather than assuming an omnipotent attacker or blaming callers for a difficult interface.

## Map the choice points

Inspect authentication, authorization, session/token handling, cryptographic calls, sensitive parsers, and configuration constructors. Find where callers select algorithms, supply keys or nonces, choose timeouts, toggle verification, interpret errors, or provide raw strings with security meaning.

## Probe consequential edges

- **Defaults and sentinel values:** trace absent, empty, null, zero, negative, invalid, and out-of-range values through parsing and enforcement. Zero may mean immediate expiry, no limit, or invalid input; verify the implementation.
- **Algorithm policy:** verify that accepted algorithms and key types come from trusted policy, not an untrusted token or peer. An algorithm parameter is a review target, not automatically a vulnerability.
- **Semantic confusion:** examine parameters that can be swapped without detection, raw strings for distinct concepts, implicit conversions, and reuse of keys/nonces across purposes. Prefer meaningful types or validated constructors when they remove a concrete error path.
- **Configuration interactions:** test combinations, precedence, environment overrides, and typo handling. A secure default alone does not validate an unsafe caller-supplied value.
- **Failure handling:** trace false returns, exceptions, parse failures, missing dependencies, and empty keys. A boolean API is not inherently unsafe; the question is whether the caller reliably enforces failure.
- **Auth/session ergonomics:** distinguish identity from authorization, decoding from verification, user identifiers from trusted principals, and invalid credentials from unavailable validation services.

Consider a malicious caller within their actual control, a developer following the first example, and a developer misunderstanding the API. Explicitly privileged administrative configuration is not an escalation unless a less-trusted actor can influence it or an unsafe ordinary path matters.

## Verify a finding

Show the concrete usage that reaches weakened security and the expected invariant it violates. Inspect docs, call sites, validation layers, and available tests for counterevidence. A safe wrapper or unreachable configuration may refute the candidate; missing context leaves it unresolved.

Recommend the narrowest effective improvement: secure defaults, explicit validation, purpose-specific types, trusted algorithm policy, clearer failure contracts, or a safer high-level API. Account for existing integrations and migration costs; do not force a breaking redesign solely because a lower-level primitive exists. Use maintained cryptographic libraries and current authoritative guidance instead of inventing crypto or relying on static algorithm examples.

> Adapted by kstack from [Trail of Bits upstream](https://github.com/trailofbits/skills/blob/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff/plugins/sharp-edges/skills/sharp-edges/SKILL.md). This adapted material is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [third-party notices](../../../third-party-notices.md#trail-of-bits).
