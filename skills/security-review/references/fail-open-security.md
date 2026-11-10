# Fail-open security

Trace the behavior when a security setting is absent, empty, malformed, or overridden, and when a validator or policy service fails. The issue is a weakened enforcement decision, not a suspicious flag name.

Examples to investigate include authentication defaulting off, ignored verification results, parsing failures falling back to permissive policy, or exceptions being treated as authorization success. Confirm that the protected action is actually allowed and that no established outer control covers the same boundary.

Separate deliberate public routes and documented low-risk availability choices from controls that must reject uncertain requests. Report the affected environment and actor; do not claim a live exposure merely because a switch exists.

Prefer explicit secure defaults, validated combinations, and a failure contract appropriate to the protected operation. For CORS or debug toggles, use the corresponding category's context rather than assuming every permissive value is an authentication bypass.

> Adapted by kstack from [Trail of Bits upstream](https://github.com/trailofbits/skills/blob/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff/plugins/insecure-defaults/references/fail-open-security.md). This adapted material is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [third-party notices](../../../third-party-notices.md#trail-of-bits).
