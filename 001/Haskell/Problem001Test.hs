module Main where

import Test.HUnit
import System
import Problem001

sum35_tests = TestList [
  TestCase (assertEqual "sum up to 0"  0 (sum35 0)),
  TestCase (assertEqual "sum up to 3"  3 (sum35 3)),
  TestCase (assertEqual "sum up to 5"  8 (sum35 5)),
  TestCase (assertEqual "sum up to 9" 23 (sum35 9))
  ]

checkTests counts = case counts of
	Counts _ _ errors failures ->
		if (errors + failures > 0)
		then exitFailure
		else (exitWith ExitSuccess)

main = runTestTT (TestLabel "testing sum35" sum35_tests)  >>= checkTests
