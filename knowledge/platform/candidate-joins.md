# Candidate Joins

## Summary

Candidate joins are review edges between reduced registry records and reduced personality records. They help platform research organize possible relationships, but they are not proof that a driver loaded, attached, or supported hardware.

## Context

- Related platform notes: `knowledge/platform/matching-path.md`, `knowledge/platform/topology-vocabulary.md`
- Related tool: `tools/provider-class-join/provider_class_join.py`
- Related schema: `datasets/schemas/registry-personality-join.schema.json`
- Related fixtures: `datasets/fixtures/provider-class-join/provider-class-join.fixture.json`, `datasets/fixtures/candidate-joins/registry-personality-candidates.fixture.json`

## Edge States

| State | Meaning | Boundary |
| --- | --- | --- |
| `candidate` | Reduced records share an explicit join key. | Still needs runtime or stronger artifact confirmation. |
| `unresolved` | A personality or registry record cannot be matched with committed evidence. | Do not guess from nearby names or families. |
| `rejected` | A policy or conflict rules out the edge. | Rejection reason should be explicit. |

## Join Reasons

First-pass platform research should prefer these reasons:

- `provider_class` for `IOProviderClass` to topology `class_name`;
- `io_name` only when both sides expose explicit names;
- `pci_id` only after registry blobs and personality tokens are normalized;
- `pci_class` only after class code normalization;
- `user_client_class` only as a declared surface, not an open connection;
- `insufficient_evidence` when a join is intentionally unresolved.

## Observations

- The provider-class join fixture currently records unresolved HID personalities because the reduced topology fixture lacks matching classes.
- The join schema requires `state`, `registry_ref`, `personality_ref`, `join_reason`, and `confidence`.
- The provider-class join tool always sets `requires_runtime_confirmation` to true.
- Candidate join fixtures include explanation fields so uncertainty is visible in the data.

## Inferences

- Candidate joins are useful for choosing what to inspect next, not for declaring runtime behavior.
- `provider_class` is the cheapest useful join reason but should usually be paired with topology ancestry before interpretation.
- PCI joins can be more precise than provider-class joins, but only after both registry IDs and personality match tokens are normalized.
- Unresolved edges are a productive output because they show exactly which evidence is missing.

## Unknowns

- The project does not yet have release-backed join edges for `15.6`.
- The schema does not yet encode ancestor class paths as first-class match evidence.
- Runtime attachment evidence is not modeled as a separate schema yet.

## Next Work

- Add ancestor-aware candidate examples after topology fixtures include ancestor class paths.
- Keep provider-class joins low or medium confidence unless stronger evidence exists.
- Add a platform review checklist item blocking runtime claims from candidate-only edges.

## Sources

- `tools/provider-class-join/provider_class_join.py`
- `datasets/schemas/registry-personality-join.schema.json`
- `datasets/fixtures/provider-class-join/provider-class-join.fixture.json`
- `datasets/fixtures/candidate-joins/registry-personality-candidates.fixture.json`
