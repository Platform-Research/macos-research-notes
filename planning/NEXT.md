# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/validate-known-schemas.py` now validates the missing-artifact release diff fixture from the `tools/validate-missing-artifact-release-diff` cycle.

## Current Recommendation

Continue by adding a missing-artifact release diff README note.

Reason: the fixture is now validated, but the release-diff fixture folder does not yet explain why this unresolved example exists.

## Next Branch

```text
docs/missing-artifact-release-diff-readme
```

## Session Goal

Create or update the release diff fixture README:

```text
datasets/fixtures/release-diff/README.md
```

## Research Question

How should the release diff fixtures document unresolved missing-artifact examples?

## Target Output

A bounded README update that captures:

- Fixture list.
- Missing-artifact fixture purpose.
- Unresolved-state meaning.
- Validation command.
- Evidence boundary.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `datasets/fixtures/release-diff/README.md` exists.
- It lists the missing-artifact fixture and explains `unresolved`.
- No unsupported driver claims are made.
- The validation command remains accurate.

## Follow-Up Queue

1. Add manifest coverage table for 15.6 and 16.0.
2. Add release diff unresolved-state guidance to compare prompt.
3. Add release diff fixture coverage to readiness guide.
