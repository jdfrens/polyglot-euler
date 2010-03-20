module Numbers (factorial, 
                isEven,
                primes, primeFactors, factors, 
                triangleNumber) where

isEven n = n `mod` 2 == 0

primes :: [Integer]
primes = sieve [2..]
  where sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]

primeFactors 1 = []
primeFactors n = go n primes
   where
   go n ps@(p:pt)
      | p*p > n        = [n]
      | n `rem` p == 0 = p : go (n `quot` p) ps
      | otherwise      = go n pt

factors n = filter (\i -> n `mod` i == 0) [1..n]

factorial n = product [1..n]
  
triangleNumber n = sum [1..n]
