# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/15.6/README.md` and `macos/16.0/README.md` now point to manifest coverage from the `macos/release-readme-manifest-coverage` cycle.

## Current Recommendation

Continue by adding compare prompt report destination guidance.

Reason: the compare prompt currently says `docs/ or knowledge/`, but it should guide report placement by maturity.

## Next Branch

```text
prompts/compare-report-destination-guidance
```

## Session Goal

Update compare prompt:

```text
prompts/research/compare-releases.md
```

## Research Question

How should the compare prompt choose docs, knowledge, or datasets outputs?

## Target Output

A bounded prompt update that captures:

- `datasets/fixtures` for structured fixtures.
- `docs/guidelines` for workflow guidance.
- `docs/reports` for evidence-backed reports.
- `knowledge` for promoted atomic findings.
- Keep unresolved prototypes out of promoted conclusions.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `prompts/research/compare-releases.md` includes destination guidance.
- The prompt keeps fixture/report distinction clear.
- No unsupported driver claims are made.
- The prompt keeps unresolved-state handling.

## Follow-Up Queue

1. Add release diff prompt report template.
2. Add release README readiness links.
3. Add docs/reports directory README.
