module Main where

import Test.HUnit
import System
import Problem007

nthPrimeTests = TestList [
  TestCase (2 @=? nthPrime 1),
  TestCase (3 @=? nthPrime 2),
  TestCase (5 @=? nthPrime 3),
  TestCase (7 @=? nthPrime 4),
  TestCase (11 @=? nthPrime 5),
  TestCase (13 @=? nthPrime 6),
  TestCase (1 @=? 1)
  ]
  
tests = TestList [
	TestLabel "testing nthPrime" nthPrimeTests,
	TestCase (1 @=? 1)
	]
	
main = runTestTT tests >>= checkTests
  where
    checkTests counts = case counts of
    	Counts _ _ errors failures ->
    		if (errors + failures > 0)
    		then exitFailure
    		else (exitWith ExitSuccess)
