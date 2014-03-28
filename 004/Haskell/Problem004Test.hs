module Main where

import Test.HUnit
import System.Exit
import Problem004

isPalindromeTests = TestList [
  TestCase (assertEqual "simple palindrome" True (isPalindrome 9)),
  TestCase (assertEqual "simple palindrome" True (isPalindrome 33)),
  TestCase (assertEqual "simple palindrome" True (isPalindrome 101)),
  TestCase (assertEqual "simple palindrome" True (isPalindrome 127848721)),
  TestCase (assertEqual "simple palindrome" True (isPalindrome 23233232)),

  TestCase (assertEqual "simple palindrome" False (isPalindrome 93)),
  TestCase (assertEqual "simple palindrome" False (isPalindrome 331)),
  TestCase (assertEqual "simple palindrome" False (isPalindrome 1019)),
  TestCase (assertEqual "simple palindrome" False (isPalindrome 12748721)),
  TestCase (assertEqual "simple palindrome" False (isPalindrome 23232323))
  ]

findPalindromeProductTests = TestList [
  TestCase (assertEqual "two-digit-factors palindrome" 9009 (findPalindromeProduct 10))
  ]

checkTests counts = case counts of
	Counts _ _ errors failures ->
		if (errors + failures > 0)
		then exitFailure
		else (exitWith ExitSuccess)

main = runTestTT
        (TestList [
          TestLabel "testing is palindrome" isPalindromeTests,
          TestLabel "testing palindrome search" findPalindromeProductTests
          ])
       >>= checkTests
