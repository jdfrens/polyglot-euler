#!/usr/bin/env python

import unittest

import problem009

class Problem009Tests(unittest.TestCase):

    def testpythagorean_triplet(self):
        self.assertEquals(60, problem009.pythagorean_triplet(12))
        self.assertEquals(480, problem009.pythagorean_triplet(24))
        self.assertEquals(453960, problem009.pythagorean_triplet(234))

unittest.main()
