# Topology JSON Fixture

## Summary

This directory contains a reduced safe fixture for `tools/ioreg-inventory/ioreg-inventory.sh topology-json`. It keeps only topology node headers and omits registry properties.

## Fixture

- `ioreg-topology.fixture.json`

## Regeneration Command

```sh
tools/ioreg-inventory/ioreg-inventory.sh topology-json 2 5
```

## Local Syntax Check

```sh
python3 -m json.tool datasets/fixtures/topology-json/ioreg-topology.fixture.json >/dev/null
```

## Redaction Checks

- No property dictionaries.
- No hex blobs.
- No process identifiers.
- No user-client creator values.
- No raw `ioreg` output.

## Use

This fixture supports smoke tests for provider-class joins and future ancestor-context tooling.

## Next Work

- Integrate PCI match parser into personality helper.
- Optional JSON Schema validator after dependency decision.
- Provider-class join fixture.
