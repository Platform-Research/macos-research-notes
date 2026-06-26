# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/pci-match-parse/README.md`, `tools/pci-match-parse/pci_match_parse.py`, and tests were created in the `tools/pci-match-parse` cycle.

## Current Recommendation

Continue by adding a schema validation implementation if dependency policy allows.

Reason: the validation policy exists; now check whether a local implementation can improve beyond syntax-only without external downloads.

## Next Branch

```text
tools/schema-validation-implementation
```

## Session Goal

Create the next experiment note:

```text
tools/schema-validate/README.md
```

## Research Question

What is the smallest implementable schema validation improvement without downloading dependencies?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Commands tested.
- Available local validation capabilities.
- Whether full JSON Schema validation is possible locally.
- Any script improvements that do not require downloads.
- Clear stop condition if a dependency is required.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing policy: JSON Schema validation guideline.
- Existing tool: syntax validator.
- Existing schemas, examples, and fixtures.

## Definition Of Done

Done means:

- `tools/schema-validate/README.md` documents the result.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Validation behavior is improved or the blocker is documented.

## Follow-Up Queue

1. Add provider-class candidate join tool.
2. Add topology fixture from `topology-json`.
3. Integrate PCI match parser into personality helper.
