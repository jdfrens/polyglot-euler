#!/usr/bin/env python

import unittest

import problem008

class Problem008Tests(unittest.TestCase):

    def testlargest_five_digit_product(self):
        self.assertEquals(0, problem008.largest_five_digit_product(1234))
        self.assertEquals(1890, problem008.largest_five_digit_product(23579))
        self.assertEquals(1890, problem008.largest_five_digit_product(123579))
        self.assertEquals(1890, problem008.largest_five_digit_product(235791))
        self.assertEquals(3125, problem008.largest_five_digit_product(223355555337))
        self.assertEquals(1890, problem008.largest_five_digit_product(123223957112110))
        self.assertEquals(32, problem008.largest_five_digit_product(1111222221111113))

unittest.main()
