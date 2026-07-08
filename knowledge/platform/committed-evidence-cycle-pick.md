# Committed Evidence Cycle Pick

## Summary

Cycle 221 is the best next committed-evidence cycle after 201-220. It can be completed from existing notes and fixtures, and it would clarify the recurring distinction between buses, controllers, and endpoint devices without requiring new acquisition.

## Context

- Related queue: `planning/PLATFORM_SESSION_QUEUE.md` cycles 201-221
- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related controller note: `knowledge/platform/controller-family-backlog.md`
- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 220

## Evidence Check

| Candidate | Local Evidence | Status |
| --- | --- | --- |
| Cycle 221 | Topology vocabulary, controller backlog, PCI note | Ready |
| Cycle 222 | Topology fixture and schema | Ready, but depends on bus vocabulary |
| Cycle 223 | PCI note and PCIe coverage | Ready, but narrower |
| Cycle 225 | Kext personality and DeviceTree context | Ready, but naming-sensitive |

## Recommendation

Run cycle 221 next and produce `knowledge/platform/bus-controller-endpoint-concept.md`.

## Sources

- `planning/PLATFORM_SESSION_QUEUE.md`
- `knowledge/platform/topology-vocabulary.md`
- `knowledge/platform/controller-family-backlog.md`
- `knowledge/iokit/IOPCIDevice.md`
