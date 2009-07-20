#!/usr/bin/env python

import unittest

import problem004

class Problem004Tests(unittest.TestCase):

    def test_is_palindrome(self):
      is_palindrome = problem004.is_palindrome
      self.assertTrue(is_palindrome(9))
      self.assertTrue(is_palindrome(33))
      self.assertTrue(is_palindrome(101))
      self.assertTrue(is_palindrome(127848721))
      self.assertTrue(is_palindrome(23233232))

    def test_is_not_palindrome(self):
      is_palindrome = problem004.is_palindrome
      self.assertFalse(is_palindrome(93))
      self.assertFalse(is_palindrome(331))
      self.assertFalse(is_palindrome(1019))
      self.assertFalse(is_palindrome(12748721))
      self.assertFalse(is_palindrome(23232323))
      
    def test_find_palindrome_product(self):
        self.assertEquals(9009, problem004.find_palindrome_product(10))
        

unittest.main()
