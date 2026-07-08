# Bus Domain Grouping

## Summary

Bus-domain grouping organizes platform services by relationship domain, such as PCI, USB, storage, display, networking, or virtual providers. The grouping is a research convenience: it should not imply support quality, driver completeness, or runtime attachment.

## Context

- Related provider note: `knowledge/platform/published-ioservice-concept.md`
- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Related candidate note: `knowledge/platform/candidate-joins.md`
- Related fixtures: `datasets/fixtures/provider-class-join/provider-class-join.fixture.json`, `datasets/fixtures/parsed-pci-matches/parsed-pci-matches.fixture.json`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 206

## Observations

- `published-ioservice-concept.md` records that a published service can represent a provider, driver, family object, controller-facing service, or software service depending on context.
- `IOPCIDevice.md` records that PCI matching has family-specific keys and identity fields.
- `candidate-joins.md` treats provider/personality relationships as candidates unless stronger runtime evidence exists.

## Inferences

- Bus-domain grouping can start from `IOProviderClass`, class names, family-specific keys, or parsed match-key families.
- A service may belong near more than one research domain, so grouping should allow uncertainty instead of forcing one label.
- Domain grouping is safe when phrased as metadata organization, not as a statement that a bus is fully supported.

## Unknowns

- The project does not yet have a controlled vocabulary for all bus domains.
- Cross-domain services need a boundary note before automated grouping becomes authoritative.

## Sources

- `knowledge/platform/published-ioservice-concept.md`
- `knowledge/iokit/IOPCIDevice.md`
- `knowledge/platform/candidate-joins.md`
- `datasets/fixtures/provider-class-join/provider-class-join.fixture.json`
- `datasets/fixtures/parsed-pci-matches/parsed-pci-matches.fixture.json`
