import unittest
from unittest.mock import Mock

from src.finapp.BankAccount import BankAccount

class TestBankAccount(unittest.TestCase):
    def setUp(self):
        self.acc = BankAccount(balance=100, name="TestUser")

    def tearDown(self):
        del self.acc

    def test_deposit_positive_amount(self):
        self.acc.deposit(50)
        self.assertEqual(self.acc.balance, 150)

if __name__ == "__main__":
    unittest.main()