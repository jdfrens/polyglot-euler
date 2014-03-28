module Main where

import Test.HUnit
import System.Exit
import Problem003

greatest_prime_factor_tests = TestList [
  TestCase (assertEqual "GPF of 2" 2 (greatestPrimeFactor 2)),
  TestCase (assertEqual "GPF of 4" 2 (greatestPrimeFactor 4)),
  TestCase (assertEqual "GPF of 6" 3 (greatestPrimeFactor 6)),
  TestCase (assertEqual "GPF of 13195" 29 (greatestPrimeFactor 13195))
  ]

checkTests counts = case counts of
	Counts _ _ errors failures ->
		if (errors + failures > 0)
		then exitFailure
		else (exitWith ExitSuccess)

tests = TestList [
  TestLabel "testing GPF" greatest_prime_factor_tests
  ]

main = runTestTT tests  >>= checkTests
