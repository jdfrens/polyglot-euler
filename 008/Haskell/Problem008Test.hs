module Main where

import Test.HUnit
import System.Exit
import Problem008

largestFiveDigitProductTests = TestList [
  TestCase (0 @=? largestFiveDigitProduct 1234),
  TestCase (1890 @=? largestFiveDigitProduct 23579),
  TestCase (1890 @=? largestFiveDigitProduct 123579),
  TestCase (1890 @=? largestFiveDigitProduct 235791),
  TestCase (3125 @=? largestFiveDigitProduct 223355555337),
  TestCase (1890 @=? largestFiveDigitProduct 123223957112110),
  TestCase (32 @=? largestFiveDigitProduct 1111222221111113),
  TestCase (1 @=? 1)
  ]

tests = TestList [
	TestLabel "testing largestFiveDigitProduct" largestFiveDigitProductTests,
	TestCase (1 @=? 1)
	]

main = runTestTT tests >>= checkTests
  where
    checkTests counts = case counts of
    	Counts _ _ errors failures ->
    		if (errors + failures > 0)
    		then exitFailure
    		else (exitWith ExitSuccess)
