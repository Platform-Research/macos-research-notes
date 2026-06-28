# Next Work

Use this file to choose the next focused session.

## Last Completed

`prompts/research/compare-releases.md` now references release acquisition and release diff schemas from the `prompts/compare-release-schema-references` cycle.

## Current Recommendation

Continue by adding a release diff prompt output checklist.

Reason: the compare prompt now references schemas, but it still lacks a compact output checklist for reports and fixtures.

## Next Branch

```text
prompts/release-diff-output-checklist
```

## Session Goal

Update compare prompt:

```text
prompts/research/compare-releases.md
```

## Research Question

What output checklist should the release comparison prompt require?

## Target Output

A bounded prompt update that captures:

- Source release and target release.
- Evidence paths.
- State labels.
- Unknowns and unresolved records.
- Validation command.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `prompts/research/compare-releases.md` includes an output checklist.
- The prompt retains unresolved-state handling.
- No unsupported driver claims are made.
- The prompt keeps evidence path requirements.

## Follow-Up Queue

1. Add release diff fixture coverage to compare prompt.
2. Add manifest coverage notes to release README stubs.
3. Add compare prompt report destination guidance.
