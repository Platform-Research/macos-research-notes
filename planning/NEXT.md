# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/candidate-joins/README.md` and a candidate join fixture were created in the `datasets/fixtures/candidate-joins` cycle.

## Current Recommendation

Continue by integrating the PCI decoder into the IORegistry helper.

Reason: the join fixture depends on normalized PCI IDs; the IORegistry helper should expose a safe normalized PCI mode.

## Next Branch

```text
tools/ioreg-pci-decode-integration
```

## Session Goal

Create the next experiment note:

```text
tools/ioreg-inventory/README.md
```

## Research Question

What is the smallest safe normalized PCI output mode in the IORegistry helper?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- A helper command that emits decoded PCI identity fields.
- Reuse of `tools/pci-id-decode/`.
- Tests or smoke checks for known sample blobs.
- Documentation of unsupported fields.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing tool: IORegistry inventory and PCI ID decoder.
- Existing experiments: PCI inventory and registry-personality join.
- Existing fixtures: candidate joins.

## Definition Of Done

Done means:

- `tools/ioreg-inventory/README.md` documents normalized PCI output.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The helper smoke check passes locally.

## Follow-Up Queue

1. Add schema validation script.
2. Add registry ancestor capture experiment.
3. Add PCI match-string parser experiment.
