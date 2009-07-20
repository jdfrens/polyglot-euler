#!/usr/bin/env python

import unittest

import problem002

class Problem002Tests(unittest.TestCase):

    def test_fib_sum(self):
        fib_sum = problem002.fib_sum
        self.assertEqual(0, fib_sum(0))
        self.assertEqual(0, fib_sum(1))
        self.assertEqual(2, fib_sum(2))
        self.assertEqual(10, fib_sum(33))
        self.assertEqual(44, fib_sum(34))
        self.assertEqual(44, fib_sum(35))

    def test_fibs_upto(self):
        fibs_upto = problem002.fibs_upto
        self.assertEqual([], fibs_upto(0))
        self.assertEqual([1], fibs_upto(1))
        self.assertEqual([2, 1], fibs_upto(2))
        self.assertEqual([21, 13, 8, 5, 3, 2, 1], fibs_upto(33))
        self.assertEqual([34, 21, 13, 8, 5, 3, 2, 1], fibs_upto(34))
	
unittest.main()
