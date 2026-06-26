import unittest

from pci_match_parse import parse_match_string


class ParseMatchStringTests(unittest.TestCase):
    def test_plain_token(self):
        self.assertEqual(
            parse_match_string("IOPCIMatch", "0x2002106b"),
            [{
                "source_key": "IOPCIMatch",
                "raw_token": "0x2002106b",
                "token_index": 0,
                "parse_state": "parsed",
                "normalized_value": "0x2002106b",
            }],
        )

    def test_masked_token(self):
        self.assertEqual(
            parse_match_string("IOPCIClassMatch", "0x01800200&0xffffff00"),
            [{
                "source_key": "IOPCIClassMatch",
                "raw_token": "0x01800200&0xffffff00",
                "token_index": 0,
                "parse_state": "parsed",
                "normalized_value": "0x1800200",
                "normalized_mask": "0xffffff00",
            }],
        )

    def test_multiple_tokens(self):
        records = parse_match_string("IOPCIPrimaryMatch", "0x10008086 0x2000106b")
        self.assertEqual(len(records), 2)
        self.assertEqual(records[1]["token_index"], 1)
        self.assertEqual(records[1]["normalized_value"], "0x2000106b")

    def test_unsupported_token(self):
        records = parse_match_string("IOPCIMatch", "pci14e4,4434")
        self.assertEqual(records[0]["parse_state"], "unsupported")

    def test_empty_value_is_ambiguous(self):
        records = parse_match_string("IOPCIMatch", "")
        self.assertEqual(records[0]["parse_state"], "ambiguous")


if __name__ == "__main__":
    unittest.main()
