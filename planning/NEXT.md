# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/validate-known-schemas.py` now validates 15.6 and 16.0 acquisition manifests from the `tools/validate-release-acquisition-fixtures` cycle.

## Current Recommendation

Continue by linking release folders to their acquisition manifest fixtures.

Reason: release folders and fixtures now exist, but the release folders do not yet point reviewers to the corresponding acquisition manifests.

## Next Branch

```text
macos/release-acquisition-links
```

## Session Goal

Update the release folder notes:

```text
macos/15.6/artifacts.md
macos/16.0/artifacts.md
```

## Research Question

How should release artifact indexes point to their acquisition manifest fixtures?

## Target Output

A bounded release index update that captures:

- 15.6 acquisition manifest fixture link.
- 16.0 acquisition manifest fixture link.
- Missing-artifact status remains explicit.
- No claim that raw artifacts were acquired.
- Validation command remains available.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `macos/15.6/artifacts.md` links to the 15.6 acquisition manifest fixture.
- `macos/16.0/artifacts.md` links to the 16.0 acquisition manifest fixture.
- No unsupported driver claims are made.
- Missing artifact states remain explicit.

## Follow-Up Queue

1. Add a reduced release acquisition checklist example.
2. Add release diff input readiness note.
3. Add syntax validator ignore rules for local virtualenvs.
