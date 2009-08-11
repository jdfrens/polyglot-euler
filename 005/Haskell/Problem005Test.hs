module Main where

import Test.HUnit
import System
import Problem005

smallest_multiple_tests = TestList [
    TestCase (   1 @=? smallest_multiple  1)
  , TestCase (   2 @=? smallest_multiple  2)
  , TestCase (   6 @=? smallest_multiple  3)
  , TestCase (  12 @=? smallest_multiple  4)
  , TestCase (  60 @=? smallest_multiple  5)
  , TestCase (  60 @=? smallest_multiple  6)
  , TestCase (2520 @=? smallest_multiple 10)
  ]

checkTests counts = case counts of
	Counts _ _ errors failures ->
		if (errors + failures > 0)
		then exitFailure
		else (exitWith ExitSuccess)

main = runTestTT (TestLabel "testing smallest multiple" smallest_multiple_tests)  >>= checkTests
