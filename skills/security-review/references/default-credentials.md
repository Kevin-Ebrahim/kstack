# Default credentials

Look for seeded accounts, embedded service passwords, and fallback API keys. Establish that the deployed component accepts the credential, which account or capability it grants, and whether a lower-trust party can reach it.

A disabled account can refute authentication exposure only if it cannot be activated or used through another path. A forced-password-change flag is insufficient if anyone knowing the shared default can complete that change and claim the account. Inspect bootstrap ownership and enrollment controls.

Examples and fixtures may be harmless illustrative values, real leaked credentials, or a setup path users copy into production. Trace their actual use and stated scope; do not blanket-exclude documentation. A provider's test key does not prove production payment access; establish the environment and consequence.

Recommend per-deployment enrollment or explicit validated credentials, with no broadly known login on the ordinary path. Redact sensitive evidence and separate revocation or rotation from a review-only request.

> Adapted by kstack from [Trail of Bits upstream](https://github.com/trailofbits/skills/blob/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff/plugins/insecure-defaults/references/default-credentials.md). This adapted material is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [third-party notices](../../../third-party-notices.md#trail-of-bits).
