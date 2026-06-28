# Release Comparison Report Template

## Summary

- From release:
- To release:
- Comparison scope:
- Status: draft | evidence-backed | unresolved

## Inputs

| Input | Path | State | Notes |
| --- | --- | --- | --- |
| Artifact index | `macos/<version>/artifacts.md` | missing | |
| Acquisition manifest | `datasets/fixtures/acquisition-manifest/<version>.fixture.json` | missing | |
| Reduced dataset | `datasets/...` | missing | |

## Observations

- Observation:
  - Evidence:

## Inferences

- Inference:
  - Based on:
  - Confidence:

## Diff Records

| Subject | Field | State | Evidence | Notes |
| --- | --- | --- | --- | --- |
| | | unresolved | | |

## Unknowns And Unresolved Items

- Unknown:
  - Why it remains unresolved:
  - Next evidence needed:

## Validation

```sh
tools/schema-validate/validate-json.sh
.venv/bin/python tools/schema-validate/validate-known-schemas.py
```

## Follow-Up Queue

1. 

## References

- `docs/guidelines/release-diff-input-readiness.md`
- `prompts/research/compare-releases.md`
