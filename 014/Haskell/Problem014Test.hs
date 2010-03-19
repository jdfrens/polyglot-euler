module Main where

import Test.HUnit
import System
import Problem014

collatzTests = TestList [
  TestCase (1 @=? collatz 1),
  TestCase (2 @=? collatz 2),
  TestCase (8 @=? collatz 3),
  TestCase (17 @=? collatz 7),
  TestCase (4 @=? collatz 8),
  TestCase (20 @=? collatz 9),
  TestCase (7 @=? collatz 10),
  TestCase (1 @=? 1)
  ]
  
maximumCollatzUnderTests = TestList [
  TestCase (1 @=? maximumCollatzUnder 1),
  TestCase (2 @=? maximumCollatzUnder 2),
  TestCase (3 @=? maximumCollatzUnder 3),
  TestCase (3 @=? maximumCollatzUnder 4),
  TestCase (7 @=? maximumCollatzUnder 7),
  TestCase (7 @=? maximumCollatzUnder 8),
  TestCase (9 @=? maximumCollatzUnder 9),
  TestCase (9 @=? maximumCollatzUnder 10),
  TestCase (1 @=? 1)
  ]
  
tests = TestList [
	TestLabel "testing collatz" collatzTests,
	TestLabel "testing maximumCollatzUnder" maximumCollatzUnderTests,
	TestCase (1 @=? 1)
	]
	
main = runTestTT tests >>= checkTests
  where
    checkTests counts = case counts of
    	Counts _ _ errors failures ->
    		if (errors + failures > 0)
    		then exitFailure
    		else (exitWith ExitSuccess)
