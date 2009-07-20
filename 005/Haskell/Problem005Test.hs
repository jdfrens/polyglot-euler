module Main where

import Test.HUnit
import System
import Problem005

{- TODO: change the Haskell computation name -}
computation_tests = TestList [
  {- TODO: write some decent Haskell tests -}
  TestCase (assertFailure "write some decent tests!")
  ]

checkTests counts = case counts of
	Counts _ _ errors failures ->
		if (errors + failures > 0)
		then exitFailure
		else (exitWith ExitSuccess)

main = runTestTT (TestLabel "testing computation" computation_tests)  >>= checkTests
