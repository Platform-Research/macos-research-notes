# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/acquisition-manifest/16.0.fixture.json` was created in the `datasets/fixtures/acquisition-manifest-16.0` cycle.

## Current Recommendation

Continue by documenting release manifest validation examples.

Reason: both 15.6 and 16.0 now have minimal acquisition fixtures, but validation usage is still implicit.

## Next Branch

```text
docs/release-manifest-validation-examples
```

## Session Goal

Create the next validation note:

```text
docs/guidelines/release-manifest-validation-examples.md
```

## Research Question

How should release acquisition manifest fixtures be validated before merge?

## Target Output

A bounded validation note that captures:

- JSON syntax validation.
- Schema validation.
- Fixture paths covered so far.
- Boundary checks before adding release facts.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `docs/guidelines/release-manifest-validation-examples.md` exists.
- Commands are copy-pasteable from repo root.
- No unsupported driver claims are made.
- The note distinguishes syntax validation from schema validation.

## Follow-Up Queue

1. Add 15.6/16.0 manifests to optional validator.
2. Link release folders to acquisition manifest fixtures.
3. Add a reduced release acquisition checklist example.
