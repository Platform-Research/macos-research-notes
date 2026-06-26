# Provider Class Join Tool

## Summary

`provider_class_join.py` creates candidate registry-to-personality join edges by comparing topology node `class_name` values with personality `IOProviderClass` values. It never claims that a driver attached or loaded.

## Inputs

- IORegistry topology JSON from `tools/ioreg-inventory/ioreg-inventory.sh topology-json`.
- Kext personality JSON from `tools/kext-personality-inventory/kext-personality-inventory.sh personalities-json`.

## Command

```sh
tools/provider-class-join/provider_class_join.py <registry.json> <personalities.json>
```

## Output

The output is shaped for `datasets/schemas/registry-personality-join.schema.json`:

- `state: candidate` when a topology class matches `IOProviderClass`.
- `state: unresolved` when a personality has `IOProviderClass` but no topology class match.
- `join_reason` is `provider_class` or `insufficient_evidence`.
- `requires_runtime_confirmation` is always true.

## Rules

- Do not infer runtime attachment.
- Do not open services.
- Do not use object IDs as stable identifiers.
- Keep unresolved personalities instead of guessing.

## Smoke Check

Create reduced local inputs:

```sh
tools/ioreg-inventory/ioreg-inventory.sh topology-json 2 20 > /tmp/darwin-topology.json
tools/kext-personality-inventory/kext-personality-inventory.sh personalities-json /System/Library/Extensions/IOHIDFamily.kext/Contents/Info.plist > /tmp/darwin-personalities.json
```

Run the join:

```sh
tools/provider-class-join/provider_class_join.py /tmp/darwin-topology.json /tmp/darwin-personalities.json | python3 -m json.tool >/dev/null
```

## Boundaries

- Provider-class matching is broad and may produce false positives.
- Ancestor context is not used yet.
- Probe scores and match categories are not evaluated.
- Runtime registry attachment is not confirmed.

## Next Work

- Topology fixture from `topology-json`.
- Integrate PCI match parser into personality helper.
- Optional JSON Schema validator after dependency decision.
