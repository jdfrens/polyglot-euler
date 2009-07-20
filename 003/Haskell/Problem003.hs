module Problem003 (greatestPrimeFactor) where

greatestPrimeFactor :: Integer -> Integer
greatestPrimeFactor x = gpfSearch 2 x

gpfSearch f x      | x == f      = x
                   | divides x f = gpfSearch f (div x f)
                   | otherwise   = gpfSearch (f+1) x

divides x y = mod x y == 0