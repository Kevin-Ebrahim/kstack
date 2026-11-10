# Effective access

Identify the protected resource, the intended audience, and the party that gains unintended access. Inspect runtime enforcement, deployment policy, filesystem permissions, storage policy, and network reachability together.

- A broad file-creation mode is a candidate, not proof of the final permissions. On POSIX, creation mode is masked by the process umask; also inspect existing files, ownership, directories, ACLs, and later chmod operations. See [Python os.open](https://docs.python.org/3/library/os.html#os.open).
- A public storage flag needs effective policy and data classification. Intentionally public assets differ from private records; outer public-access controls may block the requested setting.
- For CORS, inspect actual response headers, origin reflection, credentials, sensitive content, and browser behavior. Wildcard origin with credentials is rejected by browsers; it does not alone prove credential theft. See [MDN's wildcard/credentials explanation](https://developer.mozilla.org/en-US/docs/Web/HTTP/Guides/CORS/Errors/CORSNotSupportingCredentials). CORS response-read policy is also distinct from server authorization and CSRF defenses.
- A loopback bind reduces network exposure but may still matter to local users or other reachable request paths. Verify the threat model rather than granting a blanket exemption.

Report the effective access and counterevidence. Recommend a policy appropriate to the resource and environment, not a universal file mode or a blanket ban on public access.

> Adapted by kstack from [Trail of Bits upstream](https://github.com/trailofbits/skills/blob/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff/plugins/insecure-defaults/references/permissive-access.md). This adapted material is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [third-party notices](../../../third-party-notices.md#trail-of-bits).
