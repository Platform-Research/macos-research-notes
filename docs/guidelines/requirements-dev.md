# Development Requirements Proposal

## Purpose

This proposal records optional Python tooling used by macOS Research Notes without making network access mandatory for ordinary research cycles.

## Proposed Optional File

Future file:

```text
requirements-dev.txt
```

Initial content when adopted:

```text
jsonschema==4.26.0
```

## Current Manual Setup

```sh
python3 -m venv .venv
.venv/bin/python -m pip install jsonschema==4.26.0
.venv/bin/python tools/schema-validate/validate-known-schemas.py
```

## Why Not Enforce Yet

- The repo still supports syntax-only validation without dependencies.
- Some cycles should remain offline.
- The project has not chosen between `requirements-dev.txt`, `uv`, or vendored tooling.
- Only schema validation currently needs the dependency.

## Adoption Rule

Adopt `requirements-dev.txt` when at least two independent tools need optional Python packages, or when schema validation becomes required before merge.

## Current Required Baseline

```sh
tools/schema-validate/validate-json.sh
```
