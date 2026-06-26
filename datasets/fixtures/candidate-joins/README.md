# Candidate Join Fixtures

## Summary

This directory contains reduced fixtures for registry-to-personality join records. The fixtures demonstrate how to express candidate and unresolved joins without claiming that a driver loaded or attached at runtime.

## Fixture

- `registry-personality-candidates.fixture.json`

## Local Syntax Check

```sh
python3 -m json.tool datasets/fixtures/candidate-joins/registry-personality-candidates.fixture.json >/dev/null
```

## Rules Demonstrated

- Candidate joins can use normalized PCI IDs.
- Unrelated records remain `unresolved`.
- Every join has a `join_reason`, `confidence`, and explanation.
- Runtime attachment remains a separate confirmation step.

## Boundaries

- The candidate PCI edge is a reduced fixture, not a full host inventory.
- The fixture does not parse multi-value `IOPCIMatch` strings.
- The fixture does not prove that any driver is active.

## Next Work

- Integrate PCI decoder into IORegistry helper.
- Add schema validation script.
- Add registry ancestor capture experiment.
