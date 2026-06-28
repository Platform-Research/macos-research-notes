# Next Work

Use this file to choose the next focused session.

## Last Completed

`prompts/research/compare-releases.md` now requires unresolved output for missing comparable release inputs from the `prompts/release-diff-unresolved-guidance` cycle.

## Current Recommendation

Continue by adding release diff fixture coverage to the readiness guide.

Reason: the readiness guide explains input gates, but it does not yet point to the concrete release-diff fixtures that demonstrate valid unresolved output.

## Next Branch

```text
docs/release-diff-fixture-coverage-readiness
```

## Session Goal

Update release diff readiness guidance:

```text
docs/guidelines/release-diff-input-readiness.md
```

## Research Question

How should release diff readiness guidance point to fixture coverage?

## Target Output

A bounded readiness update that captures:

- Fixture examples.
- Missing-artifact unresolved fixture link.
- Validation command.
- Evidence sufficiency boundary.
- Schema reference.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `docs/guidelines/release-diff-input-readiness.md` links release diff fixtures.
- The guide mentions the missing-artifact unresolved fixture.
- No unsupported driver claims are made.
- The validation command remains accurate.

## Follow-Up Queue

1. Add acquisition manifest coverage to release artifact indexes.
2. Add compare prompt schema references.
3. Add release diff prompt output checklist.
