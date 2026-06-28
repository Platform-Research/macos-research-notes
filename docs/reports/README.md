# Reports

## Purpose

Use this directory for evidence-backed reports that are more stable than experiment notes but not atomic enough for `knowledge/`.

## Filename Preview

Use lowercase date-prefixed names:

```text
yyyy-mm-dd-<topic>.md
```

## Templates

- `docs/reports/release-comparison-template.md` for evidence-backed release comparison reports.

Use templates to keep observations, inferences, unknowns, validation, and follow-ups separated.

## Report Requirements

Reports should include:

- source release and target release when comparing releases;
- committed evidence paths for every claim;
- a summary of reduced inputs used;
- unknowns and unresolved records separated from conclusions;
- validation commands and results when fixtures or schemas are involved.

## Boundaries

- Do not publish unresolved prototypes as conclusions.
- Do not claim driver behavior, hardware support, or kernel internals without artifact-backed evidence.
- Keep structured examples under `datasets/fixtures/`.
- Promote only stable atomic findings to `knowledge/`.
