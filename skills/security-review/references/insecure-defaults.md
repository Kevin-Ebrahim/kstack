# Insecure defaults review

This replaces the upstream plugin command and Workflow dependency with a direct inspection pass. Load relevant category references below rather than relying on a pattern match alone.

| Category | Follow-up |
| --- | --- |
| [Fallback secrets](fallback-secrets.md) | Known or weak values flowing into signing, encryption, authentication, or sessions. |
| [Default credentials](default-credentials.md) | Bootstrap or embedded credentials a running system can authenticate with. |
| [Fail-open security](fail-open-security.md) | Missing/invalid configuration or failed validation disables enforcement. |
| [Weak cryptography](weak-crypto.md) | A primitive or construction is unsuitable for its actual security purpose. |
| [Permissive access](permissive-access.md) | Effective access grants more than the intended trust boundary permits. |
| [Debug exposure](debug-features.md) | Sensitive detail or powerful debug capabilities reach a lower-trust audience. |

Search the project's own configuration accessors as well as language and framework idioms. Include deployment templates, container defaults, bootstrap code, and exception paths where relevant. Seeds are a starting point: `env.get`, `getenv`, `ENV.fetch`, shell fallbacks, optional config keys, security toggles, and hardcoded access settings all require context.

For each candidate trace:

1. Is the file and path reachable in the environment being reviewed?
2. Is the value conditional on missing configuration, or unconditional? A missing environment variable cannot refute a hardcoded behavior.
3. Does parsing/validation reject it or does execution proceed? Trace exceptions and fallback handlers too.
4. What security-relevant operation consumes it, and what can an attacker actually influence or gain?
5. What deployment or outer-layer controls apply, and are those controls established for the relevant supported paths?

Keep confirmed defects, refuted candidates, and unresolved traces distinct. Deployment-supplied values can reduce exposure without proving every supported installation is safe. Conversely, absence of deployment evidence is not proof of an exposed production service.

Do not exclude a file merely because it is called a fixture or example. Trace whether it ships, is imported, or is copied into operational setup. A request aimed at tests or examples keeps them in scope; explain the appropriate impact rather than treating it as production by default.

> Adapted by kstack from [Trail of Bits upstream](https://github.com/trailofbits/skills/blob/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff/plugins/insecure-defaults/commands/audit.md). This adapted material is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [third-party notices](../../../third-party-notices.md#trail-of-bits).
