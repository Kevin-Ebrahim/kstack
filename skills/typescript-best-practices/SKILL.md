---
name: typescript-best-practices
description: TypeScript best practices. Use when reading or editing any .ts or .tsx file.
disable-model-invocation: true
---

# TypeScript best practices

Apply [type-system-discipline](../principle-type-system-discipline/SKILL.md) first. Use these defaults when reading or editing TypeScript; applicability comes from the task and file type, not a provider-specific path matcher. Follow the repository's established types, schema library, naming, and public API contracts. Avoid unrelated migrations solely to match an example.

| Rule | Summary |
|------|---------|
| Discriminated unions | Model variants with a `kind` literal discriminant so impossible states can't be represented. Avoid optional-field bags when they permit contradictory states. |
| Branded types | Use the repository\'s existing branded or opaque types where confusing primitives is a real risk. Validate at creation; do not introduce a second branding convention. |
| Constructive modeling | Build the shape so the illegal value can't be constructed. `[T, ...T[]]` for non-empty, `[T, T][]` for even length, `start` plus a validated nonnegative duration for a range. Use runtime validation for invariants the type cannot express. |
| Simplest total type | Keep `T[]` while every operation on it stays total. Strengthen to `NonEmpty<T>` only where the loose type forces `!`, a cast, or a "should never happen" throw. |
| `unknown` over `any` | External data is `unknown`. |
| Schemas before guards | Before hand-writing a property-by-property type guard, use the repository's runtime schema library and infer the type from the schema, such as `z.infer`. |
| No `as` casts | Prefer narrowing or validation over assertions. Keep justified assertions for compiler limitations narrowly scoped; `as const` is not runtime validation. |
| Narrowing hierarchy | Discriminant switch > `in` operator > `typeof`/`instanceof` > user-defined type guard > `as`. |
| Type guards | Must verify the claim. A lying guard is worse than `as` because the bug hides behind a name that says it's safe. Name them `isX` or `hasX`. |
| Exhaustiveness | Inline `const _exhaustive: never = x;` in default arms so the compiler errors when a new variant is added. |
| `satisfies` over `as` | Validates the value without widening literal types. |
| Boundary validation | Parse where data crosses in, into a named domain type. `Record<string, unknown>` (however spelled) stops at that parse. Trust types inside. Validate external data at entry, preserve that invariant internally, and validate again when a new trust boundary is crossed. |
| Schema-derived types | Reach for `Pick`/`Omit`/`Parameters`/`ReturnType`/`Awaited`/`typeof` before declaring a new interface. |
| Object args | Prefer named options for easily confused parameters when consistent with the API. Preserve clear positional APIs and hot-path allocation constraints. |
| Real tests | Don't mock what you can run. Prefer the framework's real test primitives with leak/disposable checks, and verify UI in a running build. Mock only what you can't run locally. |
| Structured telemetry | Prefer structured logger diagnostics with enough context to debug from an id. No `console.log` in shipped code. |

Examples: [TypeScript patterns](references/patterns.md).
