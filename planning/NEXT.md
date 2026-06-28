# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/acquisition-manifest/README.md` now links release diff readiness guidance from the `docs/acquisition-manifest-readiness-links` cycle.

## Current Recommendation

Continue by adding the missing-artifact release diff fixture to the optional validator.

Reason: the fixture exists and is syntax-valid, but `validate-known-schemas.py` does not yet validate it as a known release-diff schema pair.

## Next Branch

```text
tools/validate-missing-artifact-release-diff
```

## Session Goal

Update the optional schema validator:

```text
tools/schema-validate/validate-known-schemas.py
```

## Research Question

How should the optional validator cover the missing-artifact release diff fixture?

## Target Output

A bounded validator update that captures:

- New release diff schema pair.
- Passing validation command.
- README coverage.
- Missing-artifact fixture remains unresolved.
- No evidence claims are added.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `tools/schema-validate/validate-known-schemas.py` validates `missing-artifacts-15.6-to-16.0.fixture.json`.
- `tools/schema-validate/README.md` lists the fixture in release diff coverage.
- No unsupported driver claims are made.
- The validation command remains accurate.

## Follow-Up Queue

1. Add missing-artifact release diff README note.
2. Add manifest coverage table for 15.6 and 16.0.
3. Add release diff unresolved-state guidance to compare prompt.
