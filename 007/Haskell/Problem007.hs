module Problem007 (nthPrime) where

import Data.List

nthPrime :: Integer -> Integer
nthPrime n = genericIndex primes (n-1)

primes = 2:filter isPrime [3,5..]
  where
    isPrime n   = all (not . divides n) $ takeWhile (\p -> p*p <= n) primes
    divides n p = n `mod` p == 0
