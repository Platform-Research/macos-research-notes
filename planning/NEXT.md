# Next Work

Use this file to choose the next focused session.

## Last Completed

`prompts/research/compare-releases.md` now includes a release diff output checklist from the `prompts/release-diff-output-checklist` cycle.

## Current Recommendation

Continue by adding release diff fixture coverage to the compare prompt.

Reason: the prompt now has schema references and an output checklist, but it does not yet point to concrete fixture examples.

## Next Branch

```text
prompts/release-diff-fixture-coverage
```

## Session Goal

Update compare prompt:

```text
prompts/research/compare-releases.md
```

## Research Question

How should the compare prompt point to release diff fixture examples?

## Target Output

A bounded prompt update that captures:

- Fixture README path.
- Missing-artifact fixture path.
- Generated fixture path.
- Unresolved example guidance.
- Validation command remains visible.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing macOS 15.6 and 16.0 stubs.
- Existing acquisition manifest schema.
- Existing acquisition rules.

## Definition Of Done

Done means:

- `prompts/research/compare-releases.md` references release diff fixture examples.
- The prompt retains unresolved-state handling.
- No unsupported driver claims are made.
- The prompt keeps evidence path requirements.

## Follow-Up Queue

1. Add manifest coverage notes to release README stubs.
2. Add compare prompt report destination guidance.
3. Add release diff prompt report template.
