# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/15.6/artifacts.md` and `macos/16.0/artifacts.md` now summarize acquisition manifest coverage from the `macos/acquisition-manifest-coverage-indexes` cycle.

## Current Recommendation

Continue by adding compare prompt schema references.

Reason: the compare prompt now handles unresolved states, but it should also name the schemas that shape valid outputs.

## Next Branch

```text
prompts/compare-release-schema-references
```

## Session Goal

Update compare prompt:

```text
prompts/research/compare-releases.md
```

## Research Question

How should the compare prompt reference release acquisition and diff schemas?

## Target Output

A bounded prompt update that captures:

- Release diff schema path.
- Acquisition manifest schema path.
- Validator command.
- Evidence path requirement.
- Readiness link remains visible.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `prompts/research/compare-releases.md` references release diff and acquisition manifest schemas.
- The prompt retains unresolved-state handling.
- No unsupported driver claims are made.
- The prompt keeps evidence path requirements.

## Follow-Up Queue

1. Add release diff prompt output checklist.
2. Add release diff fixture coverage to compare prompt.
3. Add manifest coverage notes to release README stubs.
