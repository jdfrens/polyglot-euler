module Main where

import Test.HUnit
import System

import Numbers

listOfPrimesTests = TestList [
  TestCase (assertEqual "first prime" [2] (take 1 primes)),
  TestCase (assertEqual "first two primes" [2, 3] (take 2 primes)),
  TestCase (assertEqual "primes less than 9"
            [2, 3, 5, 7] (takeWhile (<9) primes)),
  TestCase (assertEqual "primes less than 30"
            [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] (takeWhile (<30) primes))
  ]
  
primeFactorizationTests = TestList [
  TestCase (assertEqual "prime factors of 2" [2] (primeFactors 2)),
  TestCase (assertEqual "prime factors of 3" [3] (primeFactors 3)),
  TestCase (assertEqual "prime factors of 4" [2, 2] (primeFactors 4)),
  TestCase (assertEqual "prime factors of 5" [5] (primeFactors 5)),
  TestCase (assertEqual "prime factors of 6" [2, 3] (primeFactors 6)),
  TestCase (assertEqual "prime factors of 4914"
            [2, 3, 3, 3, 7, 13] (primeFactors 4914))
  ]

factorsTests = TestList [
  TestCase ([1] @=? factors 1),
  TestCase ([1, 3] @=? factors 3),
  TestCase ([1, 2, 3, 6] @=? factors 6),
  TestCase ([1, 2, 5, 10] @=? factors 10),
  TestCase ([1, 3, 5, 15] @=? factors 15),
  TestCase ([1, 3, 7, 21] @=? factors 21),
  TestCase ([1, 2, 4, 7, 14, 28] @=? factors 28)
  ]

triangleNumberTests = TestList [
  TestCase (1 @=? triangleNumber 1),
  TestCase (3 @=? triangleNumber 2), 
  TestCase (6 @=? triangleNumber 3),
  TestCase (10 @=? triangleNumber 4),
  TestCase (15 @=? triangleNumber 5),
  TestCase (21 @=? triangleNumber 6),
  TestCase (28 @=? triangleNumber 7),
  TestCase (36 @=? triangleNumber 8),
  TestCase (45 @=? triangleNumber 9),
  TestCase (55 @=? triangleNumber 10)
  ]

checkTests counts = case counts of
	Counts _ _ errors failures ->
		if (errors + failures > 0)
		then exitFailure
		else (exitWith ExitSuccess)

main = do
  tests <- runTestTT (TestList [
    listOfPrimesTests, primeFactorizationTests,
    factorsTests, triangleNumberTests
    ])
  checkTests tests
