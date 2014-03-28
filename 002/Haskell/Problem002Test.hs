module Main where

import Test.HUnit
import System.Exit
import Problem002

fibSum_tests = TestList [
  TestCase (assertEqual "fibSum up to  0"  0 (fibSum  0)),
  TestCase (assertEqual "fibSum up to  1"  0 (fibSum  1)),
  TestCase (assertEqual "fibSum up to  2"  2 (fibSum  2)),
  TestCase (assertEqual "fibSum up to 33" 10 (fibSum 33)),
  TestCase (assertEqual "fibSum up to 34" 44 (fibSum 34)),
  TestCase (assertEqual "fibSum up to 35" 44 (fibSum 35))
  ]

fibList_tests = TestList [
  TestCase (assertEqual "first element of fibList" [1] (take 1 fibList)),
  TestCase (assertEqual "first two elements of fibList" [1, 2] (take 2 fibList)),
  TestCase (assertEqual "first five elements of fibList" [1, 2, 3, 5, 8] (take 5 fibList))
  ]

takeFibs_tests = TestList [
	TestCase (assertEqual "takeFibs up to 0" [] (takeFibs 0)),
	TestCase (assertEqual "takeFibs up to 1" [1] (takeFibs 1)),
	TestCase (assertEqual "takeFibs up to 2" [1, 2] (takeFibs 2)),
	TestCase (assertEqual "takeFibs up to 33" [1, 2, 3, 5, 8, 13, 21] (takeFibs 33)),
	TestCase (assertEqual "takeFibs up to 34" [1, 2, 3, 5, 8, 13, 21, 34] (takeFibs 34))
	]

checkTests counts = case counts of
	Counts _ _ errors failures ->
		if (errors + failures > 0)
		then exitFailure
		else (exitWith ExitSuccess)

tests = TestList [
	TestLabel "testing fibSum" fibSum_tests,
	TestLabel "testing takeFibs" takeFibs_tests,
	TestLabel "testing fibList" fibList_tests
	]

main = runTestTT tests  >>= checkTests
