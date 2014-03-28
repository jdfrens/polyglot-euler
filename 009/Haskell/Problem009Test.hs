module Main where

import Test.HUnit
import System.Exit
import Problem009

pythagoreanTripletTests = TestList [
  TestCase (60 @=? pythagoreanTriplet 12),
  TestCase (480 @=? pythagoreanTriplet 24),
  TestCase (453960 @=? pythagoreanTriplet 234),
  TestCase (1 @=? 1)
  ]

tests = TestList [
	TestLabel "testing pythagoreanTriplet" pythagoreanTripletTests,
	TestCase (1 @=? 1)
	]

main = runTestTT tests >>= checkTests
  where
    checkTests counts = case counts of
    	Counts _ _ errors failures ->
    		if (errors + failures > 0)
    		then exitFailure
    		else (exitWith ExitSuccess)
