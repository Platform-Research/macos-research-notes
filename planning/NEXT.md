# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/15.6/artifacts.md` and `macos/16.0/artifacts.md` now include a provenance mini-template from the `macos/release-provenance-mini-template` cycle.

## Current Recommendation

Continue by adding a release diff fixture generated from missing-artifact manifests.

Reason: the release diff schema exists, and the current 15.6/16.0 state can be represented honestly as unresolved because comparable artifacts are missing.

## Next Branch

```text
datasets/fixtures/missing-artifact-release-diff
```

## Session Goal

Create the release diff fixture:

```text
datasets/fixtures/release-diff/missing-artifacts-15.6-to-16.0.fixture.json
```

## Research Question

How should missing-artifact manifests produce an unresolved release diff fixture?

## Target Output

A bounded fixture update that captures:

- From release and to release.
- Metadata-only policy.
- Unresolved records for missing comparable artifacts.
- Evidence paths.
- Schema validation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `datasets/fixtures/release-diff/missing-artifacts-15.6-to-16.0.fixture.json` exists.
- The fixture validates against `release-diff.schema.json`.
- No unsupported driver claims are made.
- Records use `unresolved` where evidence is missing.

## Follow-Up Queue

1. Add release diff readiness checks to optional validator docs.
2. Add acquisition manifest README links to release readiness guidance.
3. Add missing-artifact release diff fixture to optional validator.
