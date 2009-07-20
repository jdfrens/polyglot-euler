#!/usr/bin/env python

import unittest

import problem001

class Problem001Tests(unittest.TestCase):

    def testSum35(self):
        sum35 = problem001.sum35
        self.assertEqual(0, sum35(0))
        self.assertEqual(3, sum35(3))
        self.assertEqual(8, sum35(5))
        self.assertEqual(23, sum35(9))

unittest.main()
