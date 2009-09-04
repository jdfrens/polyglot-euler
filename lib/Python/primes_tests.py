#!/usr/bin/env python

import unittest

import primes

class PrimesTests(unittest.TestCase):

    def test_primes_up_to(self):
        self.assertEqual([2], primes.primes_up_to(2))
        self.assertEqual([2, 3], primes.primes_up_to(3))
        self.assertEqual([2, 3], primes.primes_up_to(4))
        self.assertEqual([2, 3, 5, 7], primes.primes_up_to(8))
        self.assertEqual(
            [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], 
            primes.primes_up_to(29))
        self.assertEqual(
            [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], 
            primes.primes_up_to(30))

    def test_factors(self):
      self.assertEqual([1], primes.factors(1))
      self.assertEqual([1, 3], primes.factors(3))
      self.assertEqual([1, 2, 3, 6], primes.factors(6))
      self.assertEqual([1, 2, 5, 10], primes.factors(10))
      self.assertEqual([1, 3, 5, 15], primes.factors(15))
      self.assertEqual([1, 3, 7, 21], primes.factors(21))
      self.assertEqual([1, 2, 4, 7, 14, 28], primes.factors(28))

unittest.main()
