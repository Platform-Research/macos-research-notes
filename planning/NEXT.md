# Next Work

Use this file to choose the next focused session.

## Last Completed

`datasets/fixtures/topology-json/README.md` and `datasets/fixtures/topology-json/ioreg-topology.fixture.json` were created in the `datasets/fixtures/topology-json` cycle.

## Current Recommendation

Continue by integrating the PCI match parser into the personality helper.

Reason: PCI match parsing is implemented, but personality JSON output does not yet expose parsed PCI match tokens.

## Next Branch

```text
tools/kext-personality-pci-match-parse
```

## Session Goal

Create the next experiment note:

```text
tools/kext-personality-inventory/README.md
```

## Research Question

What is the smallest integration of PCI match parsing into personality inventory output?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Reuse of `tools/pci-match-parse/`.
- Parsed token output for PCI match keys.
- Smoke check using a local kext or dext.
- Clear boundary that parsing is not matching.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing tool: kext personality inventory and PCI match parser.
- Existing experiment: PCI match-string parser.
- Existing schema: kext personality inventory.

## Definition Of Done

Done means:

- `tools/kext-personality-inventory/README.md` documents parsed PCI match output.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Smoke check passes locally.

## Follow-Up Queue

1. Add optional JSON Schema validator after dependency decision.
2. Add provider-class join fixture.
3. Add release-specific metadata index.
