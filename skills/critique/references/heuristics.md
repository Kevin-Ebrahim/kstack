# Heuristic scoring guide

Use these ten review lenses with evidence from the actual task and audience. Scores are ordinal judgments, not scientific measurements, release approval, or accessibility certification. A good aggregate does not cancel a blocking defect.

| Heuristic | What to inspect |
| --- | --- |
| Visibility of system status | Loading, progress, current location, saved/unsaved state, and confirmation of consequential actions. |
| Match with the real world | Audience-appropriate language, meaningful icons, and order that fits the domain and reading direction. |
| User control and freedom | Appropriate cancel, back, undo, filter reset, and exits without losing work unnecessarily. |
| Consistency and standards | Shared terms, appearance, behaviors, and platform conventions; intentional differences should have a reason. |
| Error prevention | Clear labels, valid constraints, useful defaults, recovery, and safeguards proportional to the action. |
| Recognition over recall | Information needed for the current decision remains visible or readily retrievable. |
| Flexibility and efficiency | Frequent tasks, keyboard paths, sensible shortcuts, and batch operations where the audience benefits. |
| Aesthetic and minimalist design | Hierarchy and relevant information without competing noise; do not equate minimalism with a particular visual style. |
| Error recognition and recovery | Specific understandable messages, actionable recovery, and preservation of user work. |
| Help and documentation | Findable, task-focused help where the task requires it; simple self-explanatory surfaces may not need separate help. |

## Score each applicable lens

| Score | Evidence-based interpretation |
| --- | --- |
| 0 | The relevant task is blocked or the principle is systematically violated. |
| 1 | Major difficulty appears on the principal path. |
| 2 | Some support exists, but consequential gaps remain. |
| 3 | The inspected path works well, with minor shortcomings. |
| 4 | Strong support throughout the relevant inspected states; no material issue found. |

Use `n/a` with a reason when a criterion genuinely does not apply. Use `unverified` when it applies but the evidence is unavailable. Do not convert missing evidence into zero or four. Show the sum over `4 × number scored` and separately state coverage, for example: 24/32; eight scored, one not applicable, one unverified.

Report issue severity separately: P0 blocks completion, P1 creates major difficulty, P2 is a smaller problem with a workaround, and P3 is optional refinement. Cite the exact state, observed behavior, and consequence. Avoid universal cutoffs for option counts, response times, or decorative density without task evidence.

> Adapted by kstack from [Impeccable upstream](https://github.com/pbakaus/impeccable/blob/ec229b48547f24685ffb22aa51c462c5ae27908c/skill/reference/critique.md) (Paul Bakaus, Apache-2.0).
