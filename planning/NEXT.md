# Next Work

Use this file to choose the next focused session.

## Last Completed

`tools/schema-validate/validate-known-schemas.py` was updated to validate provider-class join fixtures in the `tools/validate-provider-class-fixture` cycle.

## Current Recommendation

Continue by adding requirements-dev.txt after adoption decision.

Reason: optional validation has enough coverage to justify a tiny committed development requirements file.

## Next Branch

```text
tools/requirements-dev
```

## Session Goal

Create the next experiment note:

```text
requirements-dev.txt
```

## Research Question

What is the smallest committed development requirements file?

## Target Output

A bounded experiment README that captures:

- Commands tested.
- Pin `jsonschema`.
- Document that it is optional development tooling.
- Keep runtime scripts dependency-free unless invoked through `.venv`.
- Smoke check validation command.
- What remains unknown or needs artifact-backed confirmation.

## Evidence To Collect

- Apple documentation or headers when available.
- `man ioreg`.
- Existing requirements-dev proposal.
- Existing optional dependency policy.
- Existing jsonschema validator.

## Definition Of Done

Done means:

- `requirements-dev.txt` exists.
- Observations, inferences, unknowns, and sources are separated.
- No unsupported driver claims are made.
- Optional validator passes locally using `.venv`.

## Follow-Up Queue

1. Add macOS release diff planning note.
2. Add artifact provenance to macOS 26.5.1 index.
3. Add requirements-dev usage to optional dependencies doc.
