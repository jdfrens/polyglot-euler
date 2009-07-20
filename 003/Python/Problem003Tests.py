#!/usr/bin/env python

import unittest

import problem003

class Problem003Tests(unittest.TestCase):

  def testGreatestPrimeFactor(self):
    gpf = problem003.greatestPrimeFactor
    self.assertEqual(2, gpf(2))
    self.assertEqual(2, gpf(4))
    self.assertEqual(3, gpf(6))
    self.assertEqual(29, gpf(13195))

unittest.main()
