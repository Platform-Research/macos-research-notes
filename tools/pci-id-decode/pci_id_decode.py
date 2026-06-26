#!/usr/bin/env python3
"""Decode small little-endian PCI values copied from IORegistry blobs."""

from __future__ import annotations

import argparse
import re


WIDTHS = {
    "vendor-id": 16,
    "device-id": 16,
    "subsystem-id": 16,
    "subsystem-vendor-id": 16,
    "revision-id": 8,
    "class-code": 24,
}


def clean_blob(value: str) -> str:
    cleaned = value.strip().removeprefix("<").removesuffix(">")
    cleaned = re.sub(r"\s+", "", cleaned)
    if not cleaned or len(cleaned) % 2:
        raise ValueError("expected an even-length hex blob")
    if not re.fullmatch(r"[0-9A-Fa-f]+", cleaned):
        raise ValueError("expected hex characters only")
    return cleaned


def decode_blob(kind: str, value: str) -> str:
    if kind not in WIDTHS:
        raise ValueError(f"unsupported PCI field: {kind}")
    raw = bytes.fromhex(clean_blob(value))
    if len(raw) > 4:
        raise ValueError("expected at most four bytes")
    number = int.from_bytes(raw.ljust(4, b"\x00"), "little")
    mask = (1 << WIDTHS[kind]) - 1
    width = WIDTHS[kind] // 4
    return f"0x{number & mask:0{width}x}"


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("kind", choices=sorted(WIDTHS))
    parser.add_argument("blob", help="IORegistry hex blob, for example <e4140000>")
    args = parser.parse_args()
    print(decode_blob(args.kind, args.blob))
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
