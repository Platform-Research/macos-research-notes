# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/helper-outputs/README.md` and reduced helper output fixtures were created in the `datasets/fixtures/helper-outputs` cycle.

## Current Recommendation

Continue by adding a candidate join fixture.

Reason: helper-output fixtures now exist, so the next step is to add one join fixture that uses the join schema explicitly.

## Next Branch

```text
datasets/fixtures/candidate-joins
```

## Session Goal

Create the next experiment note:

```text
datasets/fixtures/candidate-joins/README.md
```

## Research Question

What is the smallest candidate join fixture that demonstrates unresolved versus candidate behavior?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- One unresolved join fixture.
- One candidate join fixture using normalized PCI IDs.
- Explanation of why neither fixture proves runtime attachment.
- Commands to parse JSON locally.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing fixtures: helper outputs.
- Existing schemas: registry-personality join, IORegistry inventory, kext personality inventory.
- Existing tool: PCI ID decoder.

## Definition Of Done

Done means:

- `datasets/fixtures/candidate-joins/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Candidate join fixture JSON files parse cleanly with local tooling.

## Follow-Up Queue

1. Integrate PCI decoder into IORegistry helper.
2. Add schema validation script.
3. Add registry ancestor capture experiment.
