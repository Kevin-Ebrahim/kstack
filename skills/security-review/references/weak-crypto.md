# Cryptographic purpose and construction

Trace the algorithm, key generation, mode, nonce handling, authentication, comparison, and failure behavior to their actual security purpose. Record the library version and protocol constraints before proposing changes.

Candidates include fast general hashes used directly for passwords, predictable security tokens, obsolete encryption, unauthenticated ciphertext where authenticity is required, nonce reuse, and untrusted algorithm selection. Verify against current authoritative library or protocol guidance.

Do not infer exploitability from an algorithm name alone. A non-adversarial checksum differs from a password hash; an HMAC construction differs from a bare hash or a digital signature. Collision attacks on a hash do not by themselves demonstrate a forgery against every construction using it. Legacy protocol compatibility needs explicit analysis rather than a blind substitution.

Check mitigations and use sites. Recommend maintained high-level primitives and appropriate validation, migration, or key management. Do not invent a custom crypto scheme or label a sample secure without checking its key, nonce, and error assumptions.

> Adapted by kstack from [Trail of Bits upstream](https://github.com/trailofbits/skills/blob/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff/plugins/insecure-defaults/references/weak-crypto.md). This adapted material is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [third-party notices](../../../third-party-notices.md#trail-of-bits).
