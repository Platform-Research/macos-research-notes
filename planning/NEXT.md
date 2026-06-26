# Next Work

Use this file to choose the next focused session.

## Last Completed

`experiments/pci-match-string-parser/README.md` was created in the `experiments/pci-match-string-parser` cycle.

## Current Recommendation

Continue with normalized PCI JSON output.

Reason: PCI registry blobs can now be decoded, but the IORegistry helper still lacks schema-shaped normalized PCI output.

## Next Branch

```text
tools/ioreg-normalized-pci-json
```

## Session Goal

Create the next experiment note:

```text
tools/ioreg-inventory/README.md
```

## Research Question

What is the smallest schema-shaped normalized PCI JSON output for the IORegistry helper?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Commands tested.
- A bounded JSON command for known sample PCI fields.
- Use of the PCI decoder for normalized values.
- Clear distinction between sample mode and full inventory mode.
- Smoke checks that output parses as JSON.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing tool: IORegistry inventory and PCI ID decoder.
- Existing schema: IORegistry inventory.
- Existing experiments: PCI inventory and PCI match-string parser.

## Definition Of Done

Done means:

- `tools/ioreg-inventory/README.md` documents normalized PCI JSON output.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The new JSON output parses locally.

## Follow-Up Queue

1. Add full JSON Schema validation policy.
2. Add ancestor topology JSON mode.
3. Implement PCI match-string parser.
