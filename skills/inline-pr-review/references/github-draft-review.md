# GitHub draft reviews

Use `gh pr view` and `gh pr diff` for the selected PR. Use `gh api --paginate` to inspect its reviews and review comments. Check the signed-in account with `gh api user --jq .login` when ownership is unclear. `gh pr review --comment` submits a review immediately.

## Create one pending review

Build the GraphQL payload in a temporary JSON file and pass it to `gh api graphql --input "$payload"`. Use the PR's GraphQL ID from `gh pr view --json id`, and set `commitOID` to the reviewed head. Pass all inline comments in `threads`. Omit `event` for a pending review.

```graphql
mutation($input: AddPullRequestReviewInput!) {
  addPullRequestReview(input: $input) {
    pullRequestReview {
      id
      databaseId
      state
      url
    }
  }
}
```

Each thread takes `path`, `line`, `side`, and `body`. The line is a file line number on the specified diff side, `RIGHT` or `LEFT`. For a range, add `startLine` and `startSide`. Use the paths and lines from the host's diff, including the new path for added lines in a renamed file.

## Update the draft and verify it

- Add a thread with `addPullRequestReviewThread` and the draft's GraphQL `pullRequestReviewId`. Edit an existing comment with `updatePullRequestReviewComment`, its `pullRequestReviewCommentId`, and the new `body`. The REST API's `node_id` is the GraphQL ID.
- Verify the review state using `GET /repos/{owner}/{repo}/pulls/{number}/reviews/{review_id}`. Use the numeric `databaseId` in the REST URL.
- Read the PR's GraphQL `reviewThreads` to check paths and line anchors. Select threads by the first comment's `pullRequestReview.databaseId`. REST review comments may omit the line while a review is pending.
