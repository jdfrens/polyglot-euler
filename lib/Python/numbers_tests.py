#!/usr/bin/env python

import unittest

import numbers

class PrimesTests(unittest.TestCase):

    def test_primes_up_to(self):
        self.assertEqual([2], numbers.primes_up_to(2))
        self.assertEqual([2, 3], numbers.primes_up_to(3))
        self.assertEqual([2, 3], numbers.primes_up_to(4))
        self.assertEqual([2, 3, 5, 7], numbers.primes_up_to(8))
        self.assertEqual(
            [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], 
            numbers.primes_up_to(29))
        self.assertEqual(
            [2, 3, 5, 7, 11, 13, 17, 19, 23, 29], 
            numbers.primes_up_to(30))

    def test_factors(self):
      self.assertEqual([1], numbers.factors(1))
      self.assertEqual([1, 3], numbers.factors(3))
      self.assertEqual([1, 2, 3, 6], numbers.factors(6))
      self.assertEqual([1, 2, 5, 10], numbers.factors(10))
      self.assertEqual([1, 3, 5, 15], numbers.factors(15))
      self.assertEqual([1, 3, 7, 21], numbers.factors(21))
      self.assertEqual([1, 2, 4, 7, 14, 28], numbers.factors(28))

unittest.main()
