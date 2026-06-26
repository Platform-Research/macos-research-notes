# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/26.5.1/artifacts.md` was updated with provenance in the `macos/26.5.1-artifact-provenance` cycle.

## Current Recommendation

Continue by adding requirements-dev usage to optional dependencies documentation.

Reason: `requirements-dev.txt` now exists and should be linked from optional dependency guidance.

## Next Branch

```text
docs/requirements-dev-usage
```

## Session Goal

Create the next experiment note:

```text
docs/guidelines/optional-dependencies.md
```

## Research Question

What is the smallest requirements-dev usage update?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Mention `requirements-dev.txt`.
- Show install command.
- Keep optional status clear.
- Link validation command.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing optional dependency policy.
- Existing requirements-dev file.
- Existing schema validator.

## Definition Of Done

Done means:

- `docs/guidelines/optional-dependencies.md` references `requirements-dev.txt`.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Guidance keeps dependencies optional.

## Follow-Up Queue

1. Add first release diff fixture schema.
2. Add acquisition checklist.
3. Add release diff schema draft.
