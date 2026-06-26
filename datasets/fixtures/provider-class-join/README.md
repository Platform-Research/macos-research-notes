# Provider Class Join Fixture

## Summary

This directory contains a reduced output fixture for `tools/provider-class-join/provider_class_join.py`. It demonstrates that missing topology classes should produce unresolved join edges rather than guessed matches.

## Fixture

- `provider-class-join.fixture.json`

## Regeneration Command

```sh
tools/provider-class-join/provider_class_join.py \
  datasets/fixtures/topology-json/ioreg-topology.fixture.json \
  datasets/fixtures/helper-outputs/kext-personalities.fixture.json \
  > datasets/fixtures/provider-class-join/provider-class-join.fixture.json
```

## Local Syntax Check

```sh
python3 -m json.tool datasets/fixtures/provider-class-join/provider-class-join.fixture.json >/dev/null
```

## Rules Demonstrated

- Provider-class joins are candidate-only.
- Missing topology classes become `unresolved`.
- Runtime attachment is not proven.
- Reduced fixtures should stay small and reviewable.

## Next Work

- Release-specific metadata index.
- Helper-output fixture with parsed PCI match tokens.
- Optional dependency lock strategy.
