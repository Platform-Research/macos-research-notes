# Next Work

Use this file to choose the next focused session.

## Last Completed

`prompts/research/compare-releases.md` now includes a report skeleton from the `prompts/release-diff-report-template` cycle.

## Current Recommendation

Continue by adding release README readiness links.

Reason: release stubs link manifest coverage, but they do not yet point directly to release diff readiness guidance.

## Next Branch

```text
macos/release-readme-readiness-links
```

## Session Goal

Update release README stubs:

```text
macos/15.6/README.md
macos/16.0/README.md
```

## Research Question

How should release README stubs link readiness guidance?

## Target Output

A bounded README update that captures:

- Release diff readiness link.
- Acquisition checklist link.
- Artifact index link.
- Manifest fixture link.
- No comparison readiness claim.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `macos/15.6/README.md` links release diff readiness guidance.
- `macos/16.0/README.md` links release diff readiness guidance.
- No unsupported driver claims are made.
- The stubs still state comparable artifacts are missing.

## Follow-Up Queue

1. Add docs/reports directory README.
2. Add report filename convention to workflow rules.
3. Add release comparison report template file.
