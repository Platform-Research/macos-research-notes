# Matching Path

## Summary

The platform-facing matching path starts with a provider service, consumes personality metadata, may produce candidate join evidence, and only becomes runtime attachment evidence when a separate observation proves a driver or service actually attached. Keeping those layers separate prevents metadata from becoming an unsupported hardware claim.

## Context

- Related IOKit notes: `knowledge/iokit/IOService.md`, `knowledge/iokit/IORegistry.md`, `knowledge/iokit/kext-personalities.md`, `knowledge/iokit/IOPCIDevice.md`
- Related platform note: `knowledge/platform/platform-facing-metadata.md`
- Related fixtures: `datasets/fixtures/provider-class-join/README.md`, `datasets/fixtures/candidate-joins/README.md`
- Related tools: `tools/provider-class-join/`, `tools/pci-match-parse/`, `tools/ioreg-inventory/`, `tools/kext-personality-inventory/`

## Layer Model

| Layer | Evidence | What It Can Say | What It Cannot Say |
| --- | --- | --- | --- |
| Provider publication | `IOService` and registry notes | A service class or provider can participate in matching. | A specific driver attached. |
| Personality metadata | `IOKitPersonalities`, reduced kext or dext records | A bundle declares an intended matching dictionary. | The personality was selected at runtime. |
| Parsed family keys | PCI match tokens, name matches, vendor/product fields | A family-specific key is normalized for later comparison. | The token matches a live device unless registry evidence exists. |
| Candidate join | provider-class or normalized ID fixture | Two reduced records are compatible enough to review. | The join is final or exclusive. |
| Runtime attachment | bounded runtime observation, logs, or safe registry evidence | A service relationship was observed on a host. | Release-wide behavior without comparable artifacts. |

## Observations

- `IOService.md` records that provider publication can start matching and probing.
- `kext-personalities.md` records that personality dictionaries define `IOClass`, `IOProviderClass`, match keys, probe score, match category, and optional user-client metadata.
- Provider-class join fixtures demonstrate candidate and unresolved joins without claiming runtime attachment.
- Candidate join fixtures demonstrate confidence and explanation fields while keeping unrelated records unresolved.
- PCI parser fixtures normalize tokens but keep parsing separate from hardware matching.

## Inferences

- Platform-facing research should preserve the matching path as a chain of evidence, not collapse it into a single conclusion.
- Provider-class joins are useful early because they require little data, but they are broad and need ancestor context for stronger conclusions.
- Family-specific keys such as PCI match strings increase precision only after registry identity values are normalized.
- Runtime attachment should remain a separate evidence class from personality metadata and candidate joins.

## Unknowns

- Which ancestor depth best distinguishes broad provider-class candidates is still unknown.
- Which release-specific personality records are available for macOS `15.6` remains blocked by source acquisition.
- Which runtime observations are safe and small enough to commit as reduced attachment evidence still needs policy work.

## Next Work

- Add an ancestor vocabulary note for topology-only records.
- Summarize provider-class candidate fixture behavior in a platform note.
- Add a release-backed personality record once a verified source artifact exists.

## Sources

- `knowledge/iokit/IOService.md`
- `knowledge/iokit/kext-personalities.md`
- `datasets/fixtures/provider-class-join/README.md`
- `datasets/fixtures/candidate-joins/README.md`
- `experiments/registry-personality-join/README.md`
