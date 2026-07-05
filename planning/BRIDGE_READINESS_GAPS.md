# Bridge Readiness Gaps

Use this file to answer: "what else do we need before a future macOS/kernel-to-ARM bridge design is credible?"

## Highest Priority Gaps

| Gap | Why It Matters | Next Output |
| --- | --- | --- |
| Verified release source | Without release-backed metadata, comparisons stay unresolved. | Acquire or identify one legal `15.6` source artifact. |
| XNU source map | Kernel core, Mach, BSD, VM, scheduler, and platform hooks are underdocumented. | First lane notes exist for `osfmk`, `bsd`, `pexpert`, and `iokit`; next output is first-level source inventory. |
| Platform Expert behavior | Platform identity likely starts near this surface. | Source-backed Platform Expert note. |
| DeviceTree fixture | Bridge identity work needs safe topology examples. | Topology-only DeviceTree fixture plan or fixture. |
| Kernel collection metadata | Release-owned platform metadata needs a reduced shape. | First reduced metadata record shape or fixture. |
| Interrupt/timer sources | Bridge designs need event and time assumptions. | Public-reference/source-needed list. |
| Power redaction | Power data is important but risky to commit raw. | Redaction policy and safe field list. |
| DriverKit boundary | Some driver logic may live outside kernel space. | `knowledge/platform/driverkit-bridge-boundary.md`; next output is entitlement redaction rule. |
| Userland boundary | A bridge eventually needs service discovery and user-space expectations. | `knowledge/platform/userland-boundary-map.md` and `knowledge/platform/dyld-framework-source-needed.md`; next output is first metadata target. |
| Target definition | Experiments need a named target, release, and artifact trail. | Target record template after target selection. |

## Current Strengths

- IOKit service, registry, personality, and PCI notes exist.
- Matching path and candidate join boundaries exist.
- Platform-facing metadata and topology vocabulary exist.
- ARM bridge-readiness notes now define evidence levels, artifact classes, and bridge verbs.
- `15.6` acquisition blocker is explicit rather than hidden.

## Current Weaknesses

- XNU core has a study plan, official source reference, and first lane notes, but no file-level inventories yet.
- Mach, BSD, VM, scheduler, and pmap notes do not exist.
- Platform Expert is only represented by topology fixture evidence.
- DeviceTree has no fixture.
- Kernel collections have no reduced index.
- DriverKit, dyld, and userland boundaries have first notes, but no reduced artifacts.
- No target ARM environment is named.

## Next Five Sessions

1. Inventory first-level XNU subdirectories for `osfmk`, `bsd`, `pexpert`, and `iokit`.
2. Define DriverKit entitlement redaction rules.
3. Choose the first dyld/framework metadata inventory target.
4. Convert DeviceTree fixture plan into a schema-compatible fixture only if redaction is clear.
5. Update the `15.6` source acquisition path if a legal source becomes available.

## Evidence Rule

If a gap cannot be closed from committed evidence, record it as source-needed instead of guessing.

## Related

- `planning/ARM_BRIDGE_READINESS.md`
- `knowledge/platform/arm-bridge-readiness.md`
- `knowledge/platform/macos-kernel-layer-map.md`
- `knowledge/platform/platform-expert-bridge-surface.md`
- `knowledge/platform/devicetree-fixture-plan.md`
- `knowledge/platform/kernel-collection-metadata-shape.md`
- `knowledge/platform/interrupt-timer-source-needed.md`
- `knowledge/platform/power-management-redaction-first.md`
- `knowledge/platform/userland-boundary-map.md`
- `knowledge/platform/xnu-source-study-plan.md`
- `knowledge/platform/xnu-official-source-reference.md`
- `knowledge/platform/xnu-osfmk-mach-lane.md`
- `knowledge/platform/xnu-bsd-lane.md`
- `knowledge/platform/xnu-pexpert-lane.md`
- `knowledge/platform/xnu-iokit-lane.md`
- `knowledge/platform/driverkit-bridge-boundary.md`
- `knowledge/platform/dyld-framework-source-needed.md`
