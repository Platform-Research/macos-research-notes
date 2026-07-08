# Metadata Layering Example

## Summary

Platform metadata can be layered from bundle/personality records to provider-class candidates to registry topology. Each layer adds context, but the combined record remains a candidate until runtime attachment or startup evidence is available.

## Context

- Related personality note: `knowledge/iokit/kext-personalities.md`
- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related candidate note: `knowledge/platform/candidate-joins.md`
- Related fixtures: `datasets/fixtures/helper-outputs/kext-personalities.fixture.json`, `datasets/fixtures/provider-class-join/provider-class-join.fixture.json`, `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 218

## Layer Model

| Layer | Example Evidence | Safe Claim |
| --- | --- | --- |
| Bundle/personality | `CFBundleIdentifier`, `IOClass`, `IOProviderClass` | A bundle declares matching metadata. |
| Family key | PCI or name-match fields | A family-specific candidate can be decoded or routed. |
| Provider-class join | provider-class fixture | A class-level candidate relationship exists. |
| Registry topology | plane, class, depth, ancestry | A service appears in a topology context. |
| Runtime attachment | bounded runtime evidence | A stronger relationship may be stated. |

## Observations

- `kext-personalities.md` records matching dictionaries as metadata.
- `candidate-joins.md` records joins as uncertainty-preserving.
- `topology-vocabulary.md` records reduced topology fields that avoid property blobs.

## Inferences

- Combining layers improves research value but does not automatically upgrade the claim.
- The weakest evidence layer should cap the final wording.
- A good example should cite every layer independently so later release-backed data can replace local fixtures.

## Unknowns

- The repo does not yet contain one complete example that links all layers for a single provider family.

## Sources

- `knowledge/iokit/kext-personalities.md`
- `knowledge/platform/topology-vocabulary.md`
- `knowledge/platform/candidate-joins.md`
- `datasets/fixtures/helper-outputs/kext-personalities.fixture.json`
- `datasets/fixtures/provider-class-join/provider-class-join.fixture.json`
- `datasets/fixtures/topology-json/ioreg-topology.fixture.json`
