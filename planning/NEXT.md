# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/README.md` was updated with local full-schema validation status in the `tools/schema-validation-implementation` cycle.

## Current Recommendation

Continue by adding a provider-class candidate join tool.

Reason: topology JSON and join schemas now exist, so provider-class candidate joins can be prototyped without claiming runtime attachment.

## Next Branch

```text
tools/provider-class-join
```

## Session Goal

Create the next experiment note:

```text
tools/provider-class-join/README.md
```

## Research Question

What is the smallest provider-class candidate join helper?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Inputs from topology JSON and personality JSON.
- Candidate edge output shape.
- Rules for unresolved and ambiguous joins.
- A small fixture or smoke check.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing schemas: IORegistry, kext personality, registry-personality join.
- Existing tools: IORegistry inventory and kext personality inventory.
- Existing fixture: candidate joins.

## Definition Of Done

Done means:

- `tools/provider-class-join/README.md` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- The helper avoids runtime attachment claims.

## Follow-Up Queue

1. Add topology fixture from `topology-json`.
2. Integrate PCI match parser into personality helper.
3. Add optional JSON Schema validator after dependency decision.
