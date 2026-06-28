# Next Work

Use this file to choose the next focused session.

## Last Completed

`prompts/research/compare-releases.md` now includes report destination guidance from the `prompts/compare-report-destination-guidance` cycle.

## Current Recommendation

Continue by adding a release diff prompt report template.

Reason: the prompt now tells where outputs belong, but it still needs a compact report skeleton for evidence-backed release comparisons.

## Next Branch

```text
prompts/release-diff-report-template
```

## Session Goal

Update compare prompt:

```text
prompts/research/compare-releases.md
```

## Research Question

What report skeleton should the release comparison prompt produce?

## Target Output

A bounded prompt update that captures:

- Summary.
- Inputs.
- Evidence table.
- Diff records.
- Unknowns.
- Validation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `prompts/research/compare-releases.md` includes a report skeleton.
- The prompt keeps report/fixture distinction clear.
- No unsupported driver claims are made.
- The prompt keeps unresolved-state handling.

## Follow-Up Queue

1. Add release README readiness links.
2. Add docs/reports directory README.
3. Add report filename convention to workflow rules.
