# Fallback secrets

Report a known or predictably weak fallback when a supported execution path uses it for a security operation. Trace the configured value through validation into signing, encryption, sessions, token generation, or authentication; a literal alone is insufficient.

For example, `env.get('SIGNING_KEY', 'development-key')` is a candidate if that key signs accepted tokens. A required lookup that aborts startup when absent may refute the fallback concern, but only after checking surrounding error handlers and empty-value validation.

Random per-boot values are not known literals; assess their entropy, lifecycle, distribution, and purpose separately. Cache keys and correlation identifiers are not automatically secrets, but can still be security-relevant in a particular design. Distinguish test-only data from code used in deployment.

Recommend validated required configuration, suitable secret provisioning, and a clear failure mode appropriate to the feature. Do not print secret values or rotate them without authorization.

> Adapted by kstack from [Trail of Bits upstream](https://github.com/trailofbits/skills/blob/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff/plugins/insecure-defaults/references/fallback-secrets.md). This adapted material is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [third-party notices](../../../third-party-notices.md#trail-of-bits).
