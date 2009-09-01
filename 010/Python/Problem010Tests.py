#!/usr/bin/env python

import unittest

import problem010

class Problem010Tests(unittest.TestCase):

    def testsum_of_primes_below(self):
        self.assertEquals(0, problem010.sum_of_primes_below(1))
        self.assertEquals(2, problem010.sum_of_primes_below(2))
        self.assertEquals(5, problem010.sum_of_primes_below(3))
        self.assertEquals(5, problem010.sum_of_primes_below(4))
        self.assertEquals(10, problem010.sum_of_primes_below(5))
        self.assertEquals(17, problem010.sum_of_primes_below(10))

unittest.main()
