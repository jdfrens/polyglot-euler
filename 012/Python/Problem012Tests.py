#!/usr/bin/env python

import unittest

import problem012

class Problem012Tests(unittest.TestCase):

    def testproblem012(self):
        self.assertEquals(1, problem012.problem012(1))
        self.assertEquals(3, problem012.problem012(2))
        self.assertEquals(6, problem012.problem012(3))
        self.assertEquals(6, problem012.problem012(4))
        self.assertEquals(28, problem012.problem012(5))
        self.assertEquals(28, problem012.problem012(6))

unittest.main()
