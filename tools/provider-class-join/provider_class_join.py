#!/usr/bin/env python3
"""Create candidate provider-class joins from reduced JSON records."""

from __future__ import annotations

import argparse
import json
from pathlib import Path


def load_json(path: str) -> dict:
    return json.loads(Path(path).read_text())


def provider_class_edges(registry: dict, personalities: dict) -> list[dict]:
    registry_nodes = [
        record for record in registry.get("records", [])
        if record.get("record_kind") == "topology_node"
    ]
    personality_records = [
        record for record in personalities.get("records", [])
        if record.get("record_kind") == "kext_personality"
    ]

    edges = []
    for personality in personality_records:
        provider_class = personality.get("matching", {}).get("IOProviderClass")
        if not provider_class:
            continue
        matches = [node for node in registry_nodes if node.get("class_name") == provider_class]
        if not matches:
            edges.append(make_edge("unresolved", None, personality, provider_class, "low"))
            continue
        for node in matches:
            edges.append(make_edge("candidate", node, personality, provider_class, "medium"))
    return edges


def make_edge(state: str, node: dict | None, personality: dict, provider_class: str, confidence: str) -> dict:
    registry_ref = {
        "schema": "datasets/schemas/ioreg-inventory.schema.json",
        "record_kind": "topology_node",
    }
    if node:
        registry_ref["object_name"] = node.get("object_name")
    personality_ref = {
        "schema": "datasets/schemas/kext-personality.schema.json",
        "record_kind": "kext_personality",
        "source_path": personality.get("source_path"),
        "personality_name": personality.get("personality_name"),
    }
    return {
        "record_kind": "registry_personality_join",
        "state": state,
        "registry_ref": registry_ref,
        "personality_ref": personality_ref,
        "join_reason": "provider_class" if state == "candidate" else "insufficient_evidence",
        "matched_fields": [{
            "registry_field": "class_name",
            "personality_field": "IOProviderClass",
            "registry_value": node.get("class_name") if node else None,
            "personality_value": provider_class,
            "match_type": "exact" if state == "candidate" else "missing",
        }],
        "confidence": confidence,
        "explanation": "Provider-class candidate only; runtime attachment is not proven.",
        "requires_runtime_confirmation": True,
    }


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("registry_json")
    parser.add_argument("personality_json")
    args = parser.parse_args()

    output = {
        "schema_version": "0.1.0",
        "source": {
            "registry_inventory": {
                "schema": "datasets/schemas/ioreg-inventory.schema.json",
                "path": args.registry_json,
            },
            "personality_inventory": {
                "schema": "datasets/schemas/kext-personality.schema.json",
                "path": args.personality_json,
            },
            "policy": "candidate-only",
        },
        "edges": provider_class_edges(load_json(args.registry_json), load_json(args.personality_json)),
        "notes": [
            "Provider-class joins are candidates only and do not prove runtime attachment."
        ],
    }
    print(json.dumps(output, indent=2, sort_keys=True))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
