# Next Work

Use this file to choose the next focused session.

## Last Completed

`macos/README.md` was created in the `macos/release-metadata-index` cycle.

## Current Recommendation

Continue by adding a helper-output fixture with parsed PCI match tokens.

Reason: personality JSON now includes parsed PCI match tokens, but the fixtures do not yet show that shape.

## Next Branch

```text
datasets/fixtures/parsed-pci-matches
```

## Session Goal

Create the next experiment note:

```text
datasets/fixtures/parsed-pci-matches/README.md
```

## Research Question

What is the smallest helper-output fixture with parsed PCI match tokens?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- A reduced personality JSON fixture from a PCI-bearing kext.
- Parsed PCI match token examples.
- Regeneration command.
- Redaction and non-matching rules.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing tool: kext personality inventory and PCI match parser.
- Existing experiment: PCI match-string parser.
- Existing schemas and fixtures.

## Definition Of Done

Done means:

- `datasets/fixtures/parsed-pci-matches/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Fixture JSON parses locally.

## Follow-Up Queue

1. Add optional dependency lock strategy.
2. Add macOS 26.5.1 local runtime note.
3. Add release acquisition rules.
