# Dependency and supply-chain review

Use the bundled collector for measured dependency signals. It reads manifests/lockfiles and queries registry, advisory, and repository metadata; it does not install, build, or execute the audited dependencies. The scripts require Python 3.11+ and only its standard library. Do not estimate publish rights, downloads, or vulnerability counts from popularity, GitHub contributor counts, or memory.

## Supported coverage

- Direct dependencies: npm `package.json`, PyPI `pyproject.toml`/`requirements*.txt`, and Go `go.mod`.
- Additional version/advisory coverage: `package-lock.json`/`npm-shrinkwrap.json`, `uv.lock`, and indirect requirements in a Go 1.17+ `go.mod`.
- This pinned collector does not parse Yarn, pnpm, Poetry, Cargo, or every workspace layout. State the exact gap. Missing lockfile support may cause a declared pin or latest-registry-release fallback, which is not the deployed version.
- Private, workspace, local, and Git sources cannot be replaced with same-named public-registry metadata. Preserve the collector's non-registry and unresolved-version results.

Other established tools can provide separately attributed evidence for unsupported ecosystems, but do not imply the bundled collector covered them. Keep the reviewed manifest roots explicit in monorepos.

## Run

Choose a fresh output directory outside the target repository. Set the quoted paths below to that directory and the actual skill and project directories; create the output directory first.

```sh
python -B "$skill_dir/scripts/collect.py" "$project_dir"   --cache "$out_dir/cache" --json "$out_dir/findings.json"
python -B "$skill_dir/scripts/render.py" "$out_dir/findings.json"   --out "$out_dir/report.md"
```

Use an absolute skill path and run from a trusted directory. `-B` avoids writing bytecode into the skill package. Run the renderer only after collection succeeds; never reuse an older artifact as the output of a failed run.

Online collection sends package/version identifiers to public metadata services. Honor repository restrictions on disclosing private dependency names and use an appropriate approved source or offline evidence when needed. Existing `gh` authentication improves GitHub metadata access; the collector reads it without printing the token. Do not change login state or install missing tools automatically.

When already installed, `pip-audit` may provide an online cross-check. Its invocation uses both `--no-deps` and `--disable-pip` to avoid package resolution/build execution. Do not remove those flags. `--offline` uses cached metadata and skips that external cross-check; uncached sources remain unassessable. Preserve cache dates and caveats rather than calling an offline report current.

A nonzero exit means the requested collection/report did not complete. Explain the actual error and coverage; a corrected scoped rerun may be appropriate, but do not bypass reconciliation checks or describe failure as no findings. A manifest with no supported dependencies is a coverage result, not a clean audit.

## Interpret the artifacts

Read both report and JSON. Retain assessed-clean, assessed-flagged, and unassessable distinctions, including the denominator and reasons. Quote measured values accurately. An unavailable registry, private repository, rate limit, or missing publisher ACL is neither evidence of risk nor a clean result.

Differentiate version-matched advisory findings from package history or a latest-release check. Verify advisory details, exploit preconditions, and fixed-version compatibility using current authoritative sources before recommending an upgrade. A dependency may be affected at build time even if marked development-only.

Publisher concentration, archive/staleness, install-time execution, and scorecard signals guide investigation; none alone establishes compromise. Check the actual release and build needs before proposing script suppression or replacement. An old last-push date can describe mature software as well as abandonment.

Keep recommendations separate from measured output. Report replacement/upgrade costs, testing needed, unresolved identity or reachability, and criteria not measured. This scan does not inspect dependency source, demonstrate a successful install, or certify the supply chain.

> Adapted by kstack from [Trail of Bits upstream](https://github.com/trailofbits/skills/blob/e4dd0bb5b15535f7c5a0834187dffba6ac37e4ff/plugins/supply-chain-risk-auditor/skills/supply-chain-risk-auditor/SKILL.md). This adapted material is licensed under [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/). See [third-party notices](../../../third-party-notices.md#trail-of-bits).
