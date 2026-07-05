# ARM Bridge Readiness

## Summary

The project goal is to build enough deep macOS and kernel knowledge that a future command to design a bridge between macOS, the Darwin kernel, platform services, and an ARM environment can be answered with evidence already organized. The immediate work is knowledge capture, dependency mapping, artifact provenance, and boundary setting, not a direct claim that macOS runs on a target ARM processor.

## Context

- Campaign plan: `planning/ARM_BRIDGE_READINESS.md`
- Question map: `knowledge/platform/arm-question-map.md`
- Evidence ladder: `knowledge/platform/arm-release-evidence-ladder.md`
- Platform metadata note: `knowledge/platform/platform-facing-metadata.md`
- Matching note: `knowledge/platform/matching-path.md`
- Controller note: `knowledge/platform/arm-controller-prerequisites.md`

## What "Bridge" Means Here

Bridge readiness means the repository should be able to answer:

- what macOS expects from boot metadata before kernel services become meaningful;
- where platform-facing metadata lives in releases, kernel collections, kexts, and DriverKit bundles;
- how IOKit providers, personalities, registry topology, and family-specific keys relate;
- which platform identity surfaces must be translated, emulated, supplied, or compared;
- which controller families and SoC dependencies must be understood before a target design is credible;
- which claims are release-backed, fixture-backed, local-runtime, or still unresolved.

## What It Does Not Mean Yet

Bridge readiness does not mean:

- building a bootloader;
- patching the kernel or kernel collections;
- bypassing trust chains;
- claiming hardware enablement;
- treating Apple Silicon evidence as generic ARM evidence;
- treating Darwin concept notes as proof of a working macOS environment.

## Knowledge Domains

| Domain | Why It Matters For A Future Bridge |
| --- | --- |
| Boot and handoff metadata | Defines what must exist before kernel and service layers can be reasoned about. |
| Kernel collections | Locates platform-facing driver and service metadata inside release-owned artifacts. |
| DeviceTree and topology | Describes platform identity and hierarchy surfaces that a bridge may need to preserve or translate. |
| IOKit matching | Explains how provider services, personalities, probe metadata, and family keys connect. |
| Controller families | Identifies buses, controllers, power, timer, interrupt, storage, display, USB, and networking dependencies. |
| Release comparison | Separates stable expectations from release-specific changes. |
| Evidence policy | Prevents speculative bridge design from outrunning the artifact trail. |

## Operating Rule

For every new note, ask:

1. What future bridge question does this help answer?
2. Which macOS layer does it describe?
3. Which artifact or committed note supports it?
4. Which claim must remain unresolved?
5. What would the future bridge need from this layer: translate, emulate, expose, compare, or ignore?

## Sources

- `planning/ARM_BRIDGE_READINESS.md`
- `knowledge/platform/arm-question-map.md`
- `knowledge/platform/arm-release-evidence-ladder.md`
- `knowledge/platform/platform-facing-metadata.md`
- `knowledge/platform/matching-path.md`
- `knowledge/platform/arm-controller-prerequisites.md`
