---
name: show-me-your-work
description: "Keep a concise evidence-backed decision log for long-running or unattended work, in a location appropriate to the project."
disable-model-invocation: true
---

# Show me your work

Keep one reviewable log of consequential decisions, not a transcript of every tool call.

Use the [TSV template](references/decision-log-template.tsv). Columns are timestamp, phase, decision, reason, evidence pointer, and result. Keep cells single-line and evidence concrete: a path, command output artifact, commit, or source link.

Append with scripts/log.sh followed by the log path, phase, decision, reason, evidence, and result as six separately quoted arguments. The helper creates the header, timestamps the row, flattens embedded line breaks, and protects spreadsheet formula prefixes.

Use the user's chosen destination. Otherwise keep logs in an OS temporary task directory, or an existing project artifact location. Do not add repository reports when project instructions prohibit them. Include a log in version control only when requested or when the established delivery workflow requires it.

Log important choices, pivots, failed experiments, checkpoints, and verification results. On resuming an existing log, append a start row identifying the current run and the evidence already checked. Use a single writer or separate per-run logs; the helper does not coordinate concurrent writers.

Keep history append-only. Correct a wrong row with a new row naming what it supersedes. Before handoff, check this run's entries against the available conversation, artifacts, and tool results. Do not search unrelated private transcripts or assume a Cursor transcript path exists.

Independent review is optional when available and authorized. Report who or what actually reviewed the log, if relevant; never invent a reviewer. Point out consequential weak evidence or unverified decisions without requiring a fixed Attention section.
