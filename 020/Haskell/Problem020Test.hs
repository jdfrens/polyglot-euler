module Main where

import Test.HUnit
import System
import Problem020

sumOfDigitsOfFactorialTests = TestList [
  TestCase (1 @=? sumOfDigitsOfFactorial 1),
  TestCase (6 @=? sumOfDigitsOfFactorial 3),
  TestCase (3 @=? sumOfDigitsOfFactorial 5),
  TestCase (9 @=? sumOfDigitsOfFactorial 6),
  TestCase (1 @=? 1)
  ]
  
sumOfDigitsTests = TestList [
  TestCase (1 @=? sumOfDigits 1),
  TestCase (3 @=? sumOfDigits 12),
  TestCase (14 @=? sumOfDigits 86),
  TestCase (19 @=? sumOfDigits 1945),
  TestCase (1 @=? 1)
  ]
  
tests = TestList [
	TestLabel "testing sumOfDigitsOfFactorial" sumOfDigitsOfFactorialTests,
	TestLabel "testing sumOfDigits" sumOfDigitsTests,
	TestCase (1 @=? 1)
	]
	
main = runTestTT tests >>= checkTests
  where
    checkTests counts = case counts of
    	Counts _ _ errors failures ->
    		if (errors + failures > 0)
    		then exitFailure
    		else (exitWith ExitSuccess)
