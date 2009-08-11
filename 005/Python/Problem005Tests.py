#!/usr/bin/env python

import unittest

import problem005

class Problem005Tests(unittest.TestCase):

    def testComputation(self):
        self.assertEqual(   1, problem005.smallest_multiple( 1))
        self.assertEqual(   2, problem005.smallest_multiple( 2))
        self.assertEqual(   6, problem005.smallest_multiple( 3))
        self.assertEqual(  12, problem005.smallest_multiple( 4))
        self.assertEqual(  60, problem005.smallest_multiple( 5))
        self.assertEqual(  60, problem005.smallest_multiple( 6))
        self.assertEqual(2520, problem005.smallest_multiple(10))

unittest.main()
