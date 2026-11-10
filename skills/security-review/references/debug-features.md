# Debug and introspection exposure

Trace internal detail or powerful debugging functions to a user response, listening endpoint, artifact, or log a lower-privileged party can access. Establish both enablement and an exposure path.

Stack traces, raw driver errors, interactive consoles, and diagnostic endpoints are candidates. Identify sensitive content or actionable capability and the audience who can receive it. High log verbosity in an appropriately restricted sink is not automatically an external vulnerability, though secrets in logs may warrant separate review.

GraphQL introspection or a schema browser is not automatically an authorization bypass. Check intended discoverability, field-level authorization, exposed capabilities, and whether the schema itself is sensitive. Public API documentation may be deliberate.

Verify environment parsing and supported startup paths before crediting a production-only guard. Prefer useful user-facing errors, restricted diagnostic access, and appropriate log redaction. Do not suppress operational evidence indiscriminately or turn off needed observability as a cosmetic fix.

> Adapted by kstack from [Trail of Bits upstream](https://github.com/trailofbits/skills/blob/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff/plugins/insecure-defaults/references/debug-features.md). This adapted material is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [third-party notices](../../../third-party-notices.md#trail-of-bits).
