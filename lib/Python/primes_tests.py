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

unittest.main()
