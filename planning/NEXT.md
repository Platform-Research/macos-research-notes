# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/ioreg-inventory/README.md` and `tools/ioreg-inventory/ioreg-inventory.sh` were updated with topology JSON output in the `tools/ioreg-ancestor-json` cycle.

## Current Recommendation

Continue by implementing the PCI match-string parser.

Reason: PCI match-string parser rules are documented, but no reusable parser exists yet.

## Next Branch

```text
tools/pci-match-parse
```

## Session Goal

Create the next experiment note:

```text
tools/pci-match-parse/README.md
```

## Research Question

What is the smallest tested parser for PCI personality match strings?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Commands tested.
- Parser for plain and masked hex tokens.
- Tests for supported and unsupported forms.
- Output fields matching the parser experiment.
- Documentation that parsing is not matching.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing experiment: PCI match-string parser.
- Existing tool: PCI ID decoder.
- Existing fixtures: candidate joins.

## Definition Of Done

Done means:

- `tools/pci-match-parse/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Parser tests pass locally.

## Follow-Up Queue

1. Add a schema validation implementation if dependency policy allows.
2. Add provider-class candidate join tool.
3. Add topology fixture from `topology-json`.
