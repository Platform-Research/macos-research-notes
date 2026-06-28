# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/15.6/README.md` and `macos/16.0/README.md` now link release diff readiness guidance from the `macos/release-readme-readiness-links` cycle.

## Current Recommendation

Continue by adding a docs/reports directory README.

Reason: the compare prompt now directs evidence-backed reports to `docs/reports`, but that folder does not yet describe expectations.

## Next Branch

```text
docs/reports-readme
```

## Session Goal

Create reports directory guidance:

```text
docs/reports/README.md
```

## Research Question

What should evidence-backed reports under docs/reports contain?

## Target Output

A bounded README update that captures:

- Report purpose.
- Filename convention preview.
- Evidence requirements.
- Unknowns and unresolved handling.
- Validation notes.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `docs/reports/README.md` exists.
- It states reports require evidence paths and uncertainty handling.
- No unsupported driver claims are made.
- It keeps fixtures and reports distinct.

## Follow-Up Queue

1. Add report filename convention to workflow rules.
2. Add release comparison report template file.
3. Add report destination links to compare prompt.
