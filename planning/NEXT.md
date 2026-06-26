# Next Work

Use this file to choose the next focused session.

## Last Completed

`docs/guidelines/release-acquisition.md` was created in the `docs/release-acquisition-rules` cycle.

## Current Recommendation

Continue by adding the parsed PCI match fixture validation pair.

Reason: the parsed PCI match fixture exists, but optional schema validation does not yet cover it.

## Next Branch

```text
tools/validate-parsed-pci-fixture
```

## Session Goal

Create the next experiment note:

```text
tools/schema-validate/README.md
```

## Research Question

What is the smallest validation update for parsed PCI match fixtures?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Add parsed PCI fixture to known schema validation.
- Run syntax validation.
- Run optional jsonschema validation.
- Document the added coverage.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing optional jsonschema validation.
- Existing parsed PCI match fixture.
- Existing kext personality schema.

## Definition Of Done

Done means:

- `tools/schema-validate/README.md` documents parsed PCI fixture coverage.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Optional validator passes locally.

## Follow-Up Queue

1. Add requirements-dev proposal.
2. Add macOS 26.5.1 artifact index stub.
3. Add release provenance template.
