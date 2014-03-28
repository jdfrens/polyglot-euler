module Main where

import Test.HUnit
import System.Exit
import Problem006

diff_squares_sumsTests = TestList [
  TestCase (0 @=? diff_squares_sums 1),
  TestCase (4 @=? diff_squares_sums 2),
  TestCase (22 @=? diff_squares_sums 3),
  TestCase (170 @=? diff_squares_sums 5),
  TestCase (2640 @=? diff_squares_sums 10),
  TestCase (1 @=? 1)
  ]

sum_of_squaresTests = TestList [
  TestCase (1 @=? sum_of_squares 1),
  TestCase (5 @=? sum_of_squares 2),
  TestCase (14 @=? sum_of_squares 3),
  TestCase (55 @=? sum_of_squares 5),
  TestCase (1 @=? 1)
  ]

square_of_sumTests = TestList [
  TestCase (1 @=? square_of_sum 1),
  TestCase (9 @=? square_of_sum 2),
  TestCase (36 @=? square_of_sum 3),
  TestCase (225 @=? square_of_sum 5),
  TestCase (1 @=? 1)
  ]

tests = TestList [
	TestLabel "testing diff_squares_sums" diff_squares_sumsTests,
	TestLabel "testing sum_of_squares" sum_of_squaresTests,
	TestLabel "testing square_of_sum" square_of_sumTests,
	TestCase (1 @=? 1)
	]

main = runTestTT tests >>= checkTests
  where
    checkTests counts = case counts of
    	Counts _ _ errors failures ->
    		if (errors + failures > 0)
    		then exitFailure
    		else (exitWith ExitSuccess)
