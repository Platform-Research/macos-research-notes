# Bus Controller Endpoint Concept

## Summary

A bus organizes relationships, a controller manages access to a bus or device family, and an endpoint device is the downstream object most likely to carry family-specific identity. Reduced metadata can separate these roles only as platform vocabulary, not as proof of hardware behavior.

## Context

- Related topology note: `knowledge/platform/topology-vocabulary.md`
- Related controller note: `knowledge/platform/controller-family-backlog.md`
- Related PCI note: `knowledge/iokit/IOPCIDevice.md`
- Queue cycle: `planning/PLATFORM_SESSION_QUEUE.md` cycle 221

## Role Split

| Role | Metadata Signal | Safe Claim |
| --- | --- | --- |
| Bus | ancestry, plane, bridge-like class | The record organizes downstream relationships. |
| Controller | family terms, provider class, match-key family | The record is controller-facing. |
| Endpoint | vendor/device/name/class identity | The record may describe a concrete target for matching. |

## Boundaries

- Do not infer capability from role labels.
- Do not call an endpoint supported without runtime and release-backed evidence.
- Keep bus/controller/endpoint roles separate from driver behavior.

## Sources

- `knowledge/platform/topology-vocabulary.md`
- `knowledge/platform/controller-family-backlog.md`
- `knowledge/iokit/IOPCIDevice.md`
