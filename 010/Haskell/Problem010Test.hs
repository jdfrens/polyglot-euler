module Main where

import Test.HUnit
import System.Exit
import Problem010

sumOfPrimesBelowTests = TestList [
  TestCase (0 @=? sumOfPrimesBelow 1),
  TestCase (2 @=? sumOfPrimesBelow 2),
  TestCase (5 @=? sumOfPrimesBelow 3),
  TestCase (5 @=? sumOfPrimesBelow 4),
  TestCase (10 @=? sumOfPrimesBelow 5),
  TestCase (17 @=? sumOfPrimesBelow 10),
  TestCase (1 @=? 1)
  ]

tests = TestList [
	TestLabel "testing sumOfPrimesBelow" sumOfPrimesBelowTests,
	TestCase (1 @=? 1)
	]

main = runTestTT tests >>= checkTests
  where
    checkTests counts = case counts of
    	Counts _ _ errors failures ->
    		if (errors + failures > 0)
    		then exitFailure
    		else (exitWith ExitSuccess)
