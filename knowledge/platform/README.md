# Platform Notes

This folder collects atomic notes about platform-facing macOS internals: boot artifacts, kernel collections, device-tree assumptions, IOKit matching surfaces, registry ancestry, and hardware controller dependencies.

## Current Notes

- `boot-artifacts.md`
- `arm-macos-bringup-research.md`
- `arm-boot-to-iokit-handoff.md`
- `arm-artifact-checklist.md`
- `arm-bridge-readiness.md`
- `arm-bridge-readiness-matrix.md`
- `arm-controller-prerequisites.md`
- `arm-platform-identity-boundaries.md`
- `arm-processor-scope-boundary.md`
- `arm-question-map.md`
- `arm-release-evidence-ladder.md`
- `arm-secure-boot-source-needed.md`
- `arm-soc-dependency-map.md`
- `arm-target-experiment-boundary.md`
- `candidate-joins.md`
- `candidate-join-glossary.md`
- `controller-family-backlog.md`
- `controller-family-identity.md`
- `darwin-vs-macos-arm-boundary.md`
- `devicetree-fixture-plan.md`
- `device-tree-context.md`
- `bus-domain-grouping.md`
- `bus-nesting-patterns.md`
- `boot-stage-prerequisites.md`
- `committed-evidence-cycle-pick.md`
- `driverkit-bridge-boundary.md`
- `driverkit-placement.md`
- `dext-kext-boundary-signals.md`
- `dyld-framework-source-needed.md`
- `interrupt-timer-source-needed.md`
- `kernel-collections.md`
- `kernel-collection-metadata-shape.md`
- `kernel-collection-metadata-location.md`
- `matching-path.md`
- `macos-kernel-layer-map.md`
- `metadata-layering-example.md`
- `next-atomic-note-choice.md`
- `pci-bridge-vs-endpoint.md`
- `platform-role-vs-driver-behavior.md`
- `platform-expert-bridge-surface.md`
- `published-ioservice-concept.md`
- `platform-support-wording.md`
- `personality-glossary.md`
- `provider-glossary.md`
- `provider-discovery-vs-startup.md`
- `power-management-redaction-first.md`
- `platform-facing-metadata.md`
- `pcie-metadata-coverage.md`
- `registry-plane-glossary.md`
- `service-vs-hardware-dependency.md`
- `topology-vocabulary.md`
- `user-client-ownership.md`
- `userland-boundary-map.md`
- `xnu-official-source-reference.md`
- `xnu-bsd-lane.md`
- `xnu-iokit-lane.md`
- `xnu-osfmk-mach-lane.md`
- `xnu-pexpert-lane.md`
- `xnu-source-study-plan.md`

## Reading Order

1. `platform-facing-metadata.md`
2. `arm-bridge-readiness.md`
3. `arm-bridge-readiness-matrix.md`
4. `macos-kernel-layer-map.md`
5. `xnu-source-study-plan.md`
6. `xnu-official-source-reference.md`
7. `xnu-osfmk-mach-lane.md`
8. `xnu-bsd-lane.md`
9. `xnu-pexpert-lane.md`
10. `xnu-iokit-lane.md`
11. `arm-macos-bringup-research.md`
12. `arm-release-evidence-ladder.md`
13. `arm-artifact-checklist.md`
14. `arm-question-map.md`
15. `arm-processor-scope-boundary.md`
16. `darwin-vs-macos-arm-boundary.md`
17. `arm-soc-dependency-map.md`
18. `arm-boot-to-iokit-handoff.md`
19. `arm-platform-identity-boundaries.md`
20. `platform-expert-bridge-surface.md`
21. `devicetree-fixture-plan.md`
22. `kernel-collection-metadata-shape.md`
23. `arm-controller-prerequisites.md`
24. `interrupt-timer-source-needed.md`
25. `power-management-redaction-first.md`
26. `arm-secure-boot-source-needed.md`
27. `userland-boundary-map.md`
28. `driverkit-bridge-boundary.md`
29. `dyld-framework-source-needed.md`
30. `arm-target-experiment-boundary.md`
31. `platform-role-vs-driver-behavior.md`
32. `matching-path.md`
33. `provider-discovery-vs-startup.md`
34. `published-ioservice-concept.md`
35. `bus-nesting-patterns.md`
36. `pci-bridge-vs-endpoint.md`
37. `controller-family-identity.md`
38. `bus-domain-grouping.md`
39. `service-vs-hardware-dependency.md`
40. `boot-stage-prerequisites.md`
41. `kernel-collection-metadata-location.md`
42. `driverkit-placement.md`
43. `dext-kext-boundary-signals.md`
44. `user-client-ownership.md`
45. `provider-glossary.md`
46. `personality-glossary.md`
47. `registry-plane-glossary.md`
48. `candidate-join-glossary.md`
49. `platform-support-wording.md`
50. `metadata-layering-example.md`
51. `next-atomic-note-choice.md`
52. `committed-evidence-cycle-pick.md`
53. `topology-vocabulary.md`
54. `candidate-joins.md`
55. `boot-artifacts.md`
56. `kernel-collections.md`
57. `device-tree-context.md`
58. `controller-family-backlog.md`
59. `pcie-metadata-coverage.md`

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
