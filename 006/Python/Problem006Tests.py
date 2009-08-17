#!/usr/bin/env python

import unittest

import problem006

class Problem006Tests(unittest.TestCase):

    def testdiff_squares_sums(self):
        self.assertEquals(0, problem006.diff_squares_sums(1))
        self.assertEquals(4, problem006.diff_squares_sums(2))
        self.assertEquals(22, problem006.diff_squares_sums(3))
        self.assertEquals(170, problem006.diff_squares_sums(5))
        self.assertEquals(2640, problem006.diff_squares_sums(10))

    def testsum_of_squares(self):
        self.assertEquals(1, problem006.sum_of_squares(1))
        self.assertEquals(5, problem006.sum_of_squares(2))
        self.assertEquals(14, problem006.sum_of_squares(3))
        self.assertEquals(55, problem006.sum_of_squares(5))

    def testsquare_of_sum(self):
        self.assertEquals(1, problem006.square_of_sum(1))
        self.assertEquals(9, problem006.square_of_sum(2))
        self.assertEquals(36, problem006.square_of_sum(3))
        self.assertEquals(225, problem006.square_of_sum(5))

unittest.main()
