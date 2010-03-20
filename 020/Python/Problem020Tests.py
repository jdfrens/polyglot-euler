#!/usr/bin/env python

import unittest

import problem020

class Problem020Tests(unittest.TestCase):

    def testsum_of_digits_of_factorial(self):
        self.assertEquals(1, problem020.sum_of_digits_of_factorial(1))
        self.assertEquals(6, problem020.sum_of_digits_of_factorial(3))
        self.assertEquals(3, problem020.sum_of_digits_of_factorial(5))
        self.assertEquals(9, problem020.sum_of_digits_of_factorial(6))

    def testsum_of_digits(self):
        self.assertEquals(1, problem020.sum_of_digits(1))
        self.assertEquals(3, problem020.sum_of_digits(12))
        self.assertEquals(14, problem020.sum_of_digits(86))
        self.assertEquals(19, problem020.sum_of_digits(1945))

unittest.main()
