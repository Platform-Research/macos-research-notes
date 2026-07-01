# Platform Notes

This folder collects atomic notes about platform-facing macOS internals: boot artifacts, kernel collections, device-tree assumptions, IOKit matching surfaces, registry ancestry, and hardware controller dependencies.

## Current Notes

- `boot-artifacts.md`
- `candidate-joins.md`
- `controller-family-backlog.md`
- `device-tree-context.md`
- `kernel-collections.md`
- `matching-path.md`
- `platform-facing-metadata.md`
- `pcie-metadata-coverage.md`
- `topology-vocabulary.md`

## Reading Order

1. `platform-facing-metadata.md`
2. `matching-path.md`
3. `topology-vocabulary.md`
4. `candidate-joins.md`
5. `boot-artifacts.md`
6. `kernel-collections.md`
7. `device-tree-context.md`
8. `controller-family-backlog.md`
9. `pcie-metadata-coverage.md`

## Boundaries

These notes describe evidence-backed platform assumptions and metadata shapes. They do not claim hardware enablement, runtime attachment, or boot viability without bounded artifacts.

## Related

- `planning/PLATFORM_DIRECTION.md`
- `knowledge/iokit/IORegistry.md`
- `knowledge/iokit/IOService.md`
- `knowledge/iokit/IOPCIDevice.md`
- `knowledge/iokit/kext-personalities.md`
- `experiments/registry-ancestor-capture/README.md`
- `experiments/registry-personality-join/README.md`
