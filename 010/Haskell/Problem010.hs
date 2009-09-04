module Problem010 (sumOfPrimesBelow) where

import Numbers

sumOfPrimesBelow :: Integer -> Integer
sumOfPrimesBelow n = sum $ takeWhile (<=n) primes
