# Power Management Redaction First

## Summary

Power management is bridge-relevant, but property-level power data can be sensitive, host-specific, and easy to overinterpret. The first power-management work should define redaction and evidence boundaries before collecting examples.

## Context

- Bridge focus: `knowledge/platform/arm-bridge-readiness.md`
- SoC dependency map: `knowledge/platform/arm-soc-dependency-map.md`
- Controller prerequisites: `knowledge/platform/arm-controller-prerequisites.md`
- Topology vocabulary: `knowledge/platform/topology-vocabulary.md`
- Registry note: `knowledge/iokit/IORegistry.md`
- Review guide: `docs/guidelines/platform-review-checklist.md`

## Why This Matters

A future bridge may need to understand:

- which services publish power-management participation;
- which platform state assumptions exist before devices start;
- which fields are host-specific and should not be committed;
- how power state expectations interact with service publication and driver lifecycle;
- when power evidence is metadata-only versus runtime behavior.

## Current Evidence

- `IORegistry.md` records `IOPower` as one runtime registry plane.
- `topology-vocabulary.md` lists `IOPowerManagement` as an avoided first-pass field.
- `experiments/registry-ancestor-capture/README.md` treats `IOPowerManagement` as a field to avoid in first-pass committed examples.
- `platform-review-checklist.md` says user-client, entitlement, and power-management values are summarized or omitted unless specifically scoped.
- `arm-controller-prerequisites.md` marks power management as redaction-first.

## Redaction Rule

Until a schema exists, power-management work should prefer:

- plane names;
- class names;
- depth and topology context;
- source command;
- host build label;
- omitted-field declarations.

It should omit:

- raw `IOPowerManagement` dictionaries;
- power state values;
- device-specific policy values;
- local runtime blobs;
- behavior claims about sleep, wake, performance, or stability.

## Bridge-Relevant Questions

- Which power-management facts are needed before service matching can be interpreted?
- Which facts are platform-wide and which are device-specific?
- Which values can be reduced without exposing host-specific state?
- Which power claims require runtime evidence?

## Unknowns

- No power-management schema exists.
- No reduced power fixture exists.
- The safe field set is undecided.
- The relationship between power plane evidence and IOKit matching evidence is not mapped.

## Sources

- `knowledge/platform/arm-bridge-readiness.md`
- `knowledge/platform/arm-soc-dependency-map.md`
- `knowledge/platform/arm-controller-prerequisites.md`
- `knowledge/platform/topology-vocabulary.md`
- `knowledge/iokit/IORegistry.md`
- `docs/guidelines/platform-review-checklist.md`
- `experiments/registry-ancestor-capture/README.md`
