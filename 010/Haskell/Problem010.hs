module Problem010 (sumOfPrimesBelow) where

import Primes

sumOfPrimesBelow :: Integer -> Integer
sumOfPrimesBelow n = sum $ takeWhile (<=n) primes
