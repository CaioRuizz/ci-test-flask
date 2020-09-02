from app import app

import unittest

class TestUseless(unittest.TestCase):
    """Unit tests defined for nothing"""

    def test_useless(self):
        """Useless Test"""
        self.assertEqual(4, 4)
    