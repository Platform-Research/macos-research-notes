#!/usr/bin/env python3
"""Validate known Darwin Collective examples and fixtures with jsonschema."""

from __future__ import annotations

import json
from pathlib import Path

try:
    import jsonschema
except ImportError as exc:
    raise SystemExit(
        "jsonschema is not installed. Create a venv and run: "
        "python -m pip install jsonschema"
    ) from exc


PAIRS = [
    ("datasets/schemas/ioreg-inventory.schema.json", "datasets/examples/schema-validation/ioreg-user-client-key-counts.example.json"),
    ("datasets/schemas/ioreg-inventory.schema.json", "datasets/fixtures/helper-outputs/ioreg-user-client-key-counts.fixture.json"),
    ("datasets/schemas/ioreg-inventory.schema.json", "datasets/fixtures/topology-json/ioreg-topology.fixture.json"),
    ("datasets/schemas/kext-personality.schema.json", "datasets/examples/schema-validation/kext-personality.example.json"),
    ("datasets/schemas/kext-personality.schema.json", "datasets/fixtures/helper-outputs/kext-personalities.fixture.json"),
    ("datasets/schemas/kext-personality.schema.json", "datasets/fixtures/parsed-pci-matches/parsed-pci-matches.fixture.json"),
    ("datasets/schemas/registry-personality-join.schema.json", "datasets/examples/schema-validation/registry-personality-join.example.json"),
    ("datasets/schemas/registry-personality-join.schema.json", "datasets/fixtures/candidate-joins/registry-personality-candidates.fixture.json"),
    ("datasets/schemas/registry-personality-join.schema.json", "datasets/fixtures/provider-class-join/provider-class-join.fixture.json"),
    ("datasets/schemas/release-diff.schema.json", "datasets/fixtures/release-diff/release-diff.fixture.json"),
    ("datasets/schemas/release-diff.schema.json", "datasets/fixtures/generated-release-diff/generated-release-diff.fixture.json"),
    ("datasets/schemas/release-acquisition-manifest.schema.json", "datasets/fixtures/acquisition-manifest/acquisition-manifest.fixture.json"),
    ("datasets/schemas/release-acquisition-manifest.schema.json", "datasets/fixtures/acquisition-manifest/15.6.fixture.json"),
    ("datasets/schemas/release-acquisition-manifest.schema.json", "datasets/fixtures/acquisition-manifest/16.0.fixture.json"),
]


def load(path: str) -> object:
    return json.loads(Path(path).read_text())


def main() -> int:
    for schema_path, document_path in PAIRS:
        validator = jsonschema.Draft202012Validator(load(schema_path))
        validator.validate(load(document_path))
        print(f"ok {document_path}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
