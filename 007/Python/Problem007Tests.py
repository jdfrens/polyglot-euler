#!/usr/bin/env python

import unittest

import problem007

class Problem007Tests(unittest.TestCase):

    def testnth_prime(self):
        self.assertEquals(2, problem007.nth_prime(1))
        self.assertEquals(3, problem007.nth_prime(2))
        self.assertEquals(5, problem007.nth_prime(3))
        self.assertEquals(7, problem007.nth_prime(4))
        self.assertEquals(11, problem007.nth_prime(5))
        self.assertEquals(13, problem007.nth_prime(6))

unittest.main()
