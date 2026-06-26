# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/15.6/artifacts.md` and `macos/16.0/artifacts.md` now link to their acquisition manifest fixtures from the `macos/release-acquisition-links` cycle.

## Current Recommendation

Continue by adding a reduced release acquisition checklist example.

Reason: release indexes now point to manifests, but reviewers still need a tiny example of the checklist applied to a reduced artifact.

## Next Branch

```text
docs/reduced-release-acquisition-checklist-example
```

## Session Goal

Create the checklist example:

```text
docs/guidelines/reduced-release-acquisition-checklist-example.md
```

## Research Question

What is the smallest review checklist example for a reduced release artifact?

## Target Output

A bounded checklist example that captures:

- Branch naming.
- Allowed source.
- Output path.
- Redaction expectation.
- Validation command.
- Stop conditions.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `docs/guidelines/reduced-release-acquisition-checklist-example.md` exists.
- It is explicitly an example, not evidence of acquisition.
- No unsupported driver claims are made.
- It references the release acquisition rules and validation examples.

## Follow-Up Queue

1. Add release diff input readiness note.
2. Add syntax validator ignore rules for local virtualenvs.
3. Add release artifact provenance mini-template to macOS folders.
