#!/usr/bin/env python

import unittest

import problem014

class Problem014Tests(unittest.TestCase):

    def testcollatz(self):
        self.assertEquals(1, problem014.collatz(1))
        self.assertEquals(2, problem014.collatz(2))
        self.assertEquals(8, problem014.collatz(3))
        self.assertEquals(17, problem014.collatz(7))
        self.assertEquals(4, problem014.collatz(8))
        self.assertEquals(20, problem014.collatz(9))
        self.assertEquals(7, problem014.collatz(10))

    def testmaximum_collatz_under(self):
        self.assertEquals(1, problem014.maximum_collatz_under(1))
        self.assertEquals(2, problem014.maximum_collatz_under(2))
        self.assertEquals(3, problem014.maximum_collatz_under(3))
        self.assertEquals(3, problem014.maximum_collatz_under(4))
        self.assertEquals(7, problem014.maximum_collatz_under(7))
        self.assertEquals(7, problem014.maximum_collatz_under(8))
        self.assertEquals(9, problem014.maximum_collatz_under(9))
        self.assertEquals(9, problem014.maximum_collatz_under(10))

unittest.main()
