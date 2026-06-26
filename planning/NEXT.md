# Next Work

Use this file to choose the next focused session.

## Last Completed

`experiments/registry-ancestor-capture/README.md` was created in the `experiments/registry-ancestor-capture` cycle.

## Current Recommendation

Continue with a PCI match-string parser experiment.

Reason: PCI joins need normalized registry IDs and parsed personality match strings before automation.

## Next Branch

```text
experiments/pci-match-string-parser
```

## Session Goal

Create the next experiment note:

```text
experiments/pci-match-string-parser/README.md
```

## Research Question

What is the smallest parser shape for `IOPCIMatch` and `IOPCIPrimaryMatch` strings?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Commands tested.
- Known personality match-string shapes.
- Normalized vendor and device components.
- Ambiguous or unsupported match strings.
- Tests needed before join automation.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiment: PCI inventory and registry-personality join.
- Existing tool: PCI ID decoder and kext personality inventory.
- Existing schemas and candidate join fixture.

## Definition Of Done

Done means:

- `experiments/pci-match-string-parser/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- No unsupported match-string claims are made.

## Follow-Up Queue

1. Add normalized PCI JSON output.
2. Add full JSON Schema validation policy.
3. Add ancestor topology JSON mode.
