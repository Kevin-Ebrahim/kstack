---
name: inline-pr-review
description: "Review a pull request using code-review, then pin verified findings to diff lines in a pending review. Use when the user asks for inline PR comments or an update to a pending review."
---

# Inline PR review

## Review first

1. Identify the PR, its base and head, and the diff the host shows. Open [code-review](../code-review/SKILL.md) and follow its full workflow on that comparison. Use the resolved skill path to find sibling skills if this skill is symlinked.
2. Check the intended behavior against relevant specs, issues, commits, and related PRs. Use that context to check each finding and its proposed fix. Call out any assumption that still needs runtime or hardware verification.
3. Keep findings with an actionable change. If none survive, report the review coverage and skip creating an empty review.

## Pin the comments

- Use the exact line or short range where the author can act. Use the old side for a removed line and the new side for an added line. If the fix belongs in an unchanged or renamed file with no commentable line, attach it to the related change and name the exact file and line to fix. Put a finding in the review summary if it has no honest inline anchor.
- Put one issue in each comment. Give a short instruction and the concrete reason it matters. Use [unslop](../unslop/SKILL.md) to cut filler before saving.
- Include a fenced code block when the exact correction helps. Check the snippet against the surrounding code. Use the host's suggestion format only when the snippet can replace the selected lines as written. Place any source link after the explanation.

## Save or update the draft

A request to prepare or update a pending inline review authorizes saving that draft. A general review request or a question about how inline reviews work stays in chat. Submit only when the user explicitly asks to submit.

Check the current base, head, and existing reviews before writing. If the comparison changed, recheck the affected findings and diff anchors. Reuse the signed-in user's pending review for that PR when it can hold the current anchors. Avoid duplicating findings already raised. Edit matching pending comments in place when the anchors still apply. Preserve unrelated comments and surface outdated anchors that need a decision.

For GitHub, follow the [GitHub draft review reference](references/github-draft-review.md). On another host, use its pending review feature if available. If you cannot save a pending review, return the comments with file and line references in chat.

Read the review back after writing. Check the comment text, line anchors, and pending status. If a write times out, inspect the draft before retrying and retry only the missing changes. Report the reviewed commit, review link, and any findings you could not attach.
