module Problem005 (smallest_multiple) where

smallest_multiple :: Integer -> Integer
smallest_multiple n = foldr multiplier 1 [1..n]
  where
    multiplier acc i
      | mod acc i == 0  =  acc
      | otherwise       =  acc * (div i (gcd acc i))
