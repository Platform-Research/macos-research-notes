import unittest

from pci_id_decode import decode_blob


class DecodeBlobTests(unittest.TestCase):
    def test_vendor_id(self):
        self.assertEqual(decode_blob("vendor-id", "<e4140000>"), "0x14e4")
        self.assertEqual(decode_blob("vendor-id", "<6b100000>"), "0x106b")

    def test_device_id(self):
        self.assertEqual(decode_blob("device-id", "<34440000>"), "0x4434")
        self.assertEqual(decode_blob("device-id", "<0c100000>"), "0x100c")

    def test_revision_id(self):
        self.assertEqual(decode_blob("revision-id", "<04000000>"), "0x04")

    def test_class_code(self):
        self.assertEqual(decode_blob("class-code", "<00800200>"), "0x028000")
        self.assertEqual(decode_blob("class-code", "<00040600>"), "0x060400")

    def test_rejects_unsupported_kind(self):
        with self.assertRaises(ValueError):
            decode_blob("IODeviceMemory", "<00000000>")

    def test_rejects_non_hex(self):
        with self.assertRaises(ValueError):
            decode_blob("vendor-id", "<not-hex>")


if __name__ == "__main__":
    unittest.main()
