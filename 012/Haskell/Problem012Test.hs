module Main where

import Test.HUnit
import System
import Problem012

problem012Tests = TestList [
  TestCase (1 @=? problem012 1),
  TestCase (3 @=? problem012 2),
  TestCase (6 @=? problem012 3),
  TestCase (6 @=? problem012 4),
  TestCase (28 @=? problem012 5),
  TestCase (28 @=? problem012 6),
  TestCase (1 @=? 1)
  ]
  
tests = TestList [
	TestLabel "testing problem012" problem012Tests,
	TestCase (1 @=? 1)
	]
	
main = runTestTT tests >>= checkTests
  where
    checkTests counts = case counts of
    	Counts _ _ errors failures ->
    		if (errors + failures > 0)
    		then exitFailure
    		else (exitWith ExitSuccess)
