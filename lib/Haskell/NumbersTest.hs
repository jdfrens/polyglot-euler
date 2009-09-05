module Main where

import Test.HUnit
import System

import Numbers

list_of_primes_tests = TestList [
  TestCase (assertEqual "first prime" [2] (take 1 primes)),
  TestCase (assertEqual "first two primes" [2, 3] (take 2 primes)),
  TestCase (assertEqual "primes less than 9"
            [2, 3, 5, 7] (takeWhile (<9) primes)),
  TestCase (assertEqual "primes less than 30"
            [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] (takeWhile (<30) primes))
  ]
  
prime_factorization_tests = TestList [
  TestCase (assertEqual "prime factors of 2" [2] (primeFactors 2)),
  TestCase (assertEqual "prime factors of 3" [3] (primeFactors 3)),
  TestCase (assertEqual "prime factors of 4" [2, 2] (primeFactors 4)),
  TestCase (assertEqual "prime factors of 5" [5] (primeFactors 5)),
  TestCase (assertEqual "prime factors of 6" [2, 3] (primeFactors 6)),
  TestCase (assertEqual "prime factors of 4914"
            [2, 3, 3, 3, 7, 13] (primeFactors 4914))
  ]

checkTests counts = case counts of
	Counts _ _ errors failures ->
		if (errors + failures > 0)
		then exitFailure
		else (exitWith ExitSuccess)

main = do
  tests <- runTestTT (TestList [
        TestLabel "testing prime stuff" list_of_primes_tests,
        TestLabel "testing prime factorizations" prime_factorization_tests]
       )
  checkTests tests
