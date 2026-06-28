# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/acquisition-manifest/README.md` now includes a 15.6/16.0 coverage table from the `docs/acquisition-manifest-coverage-table` cycle.

## Current Recommendation

Continue by adding release diff unresolved-state guidance to the compare prompt.

Reason: the docs now preserve unresolved missing-artifact states, but the reusable compare prompt should explicitly ask assistants to avoid inventing differences.

## Next Branch

```text
prompts/release-diff-unresolved-guidance
```

## Session Goal

Update compare prompt:

```text
prompts/research/compare-releases.md
```

## Research Question

How should the compare prompt handle missing comparable release inputs?

## Target Output

A bounded prompt update that captures:

- Unresolved state requirement.
- Missing comparable input handling.
- Evidence path requirement.
- No unsupported driver claims.
- Release readiness link.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `prompts/research/compare-releases.md` instructs unresolved output for missing comparable inputs.
- The prompt links release diff readiness guidance.
- No unsupported driver claims are made.
- The prompt requires evidence paths.

## Follow-Up Queue

1. Add release diff fixture coverage to readiness guide.
2. Add acquisition manifest coverage to release artifact indexes.
3. Add compare prompt schema references.
