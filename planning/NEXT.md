# Next Work

Use this file to choose the next focused session.

## Last Completed

`prompts/research/compare-releases.md` now references release diff fixture examples from the `prompts/release-diff-fixture-coverage` cycle.

## Current Recommendation

Continue by adding manifest coverage notes to release README stubs.

Reason: artifact indexes now summarize manifest coverage, but the top-level release stubs do not point to that coverage.

## Next Branch

```text
macos/release-readme-manifest-coverage
```

## Session Goal

Update release README stubs:

```text
macos/15.6/README.md
macos/16.0/README.md
```

## Research Question

How should release README stubs point to manifest coverage?

## Target Output

A bounded README update that captures:

- Artifact index link.
- Acquisition manifest fixture link.
- Coverage state.
- No raw artifacts acquired.
- No behavior claims.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `macos/15.6/README.md` links its artifact index and acquisition manifest fixture.
- `macos/16.0/README.md` links its artifact index and acquisition manifest fixture.
- No unsupported driver claims are made.
- The stubs remain clear that release-specific artifacts are not acquired.

## Follow-Up Queue

1. Add compare prompt report destination guidance.
2. Add release diff prompt report template.
3. Add release README readiness links.
