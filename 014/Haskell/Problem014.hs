module Problem014 (collatz, maximumCollatzUnder,
                   listOfMaximumCollatzUnders) where
  
import Data.List
import Numbers

maximumCollatzUnder :: Integer -> Integer
collatz n
  | n == 1    = 1
  | isEven n  = 1 + collatz (n `div` 2)
  | otherwise = 1 + collatz (3 * n + 1)

maximumCollatzUnder = maximumCollatzUnder_with_foldl_and_maximum

listOfMaximumCollatzUnders = 
  [maximumCollatzUnder, maximumCollatzUnder_with_map,
   maximumCollatzUnder_with_foldl, maximumCollatzUnder_with_foldl_and_maximum,
   maximumCollatzUnder_with_foldr,
   maximumCollatzUnder_with_comprehension,
   maximumCollatzUnder_iterative]

-- ****************************
-- this works with n = 1000000
maximumCollatzUnder_iterative n = iter 1 0 0
  where iter i maxSoFar indexOfMax
          | i > n                 = indexOfMax
          | collatzOfI > maxSoFar = iter (i+1) collatzOfI i
          | otherwise             = iter (i+1) maxSoFar indexOfMax
            where collatzOfI = collatz i

-- stack problems if I use foldl instead of foldl'            
maximumCollatzUnder_with_foldl n = index
  where (_, index) = foldl' f (0, 0) [1..n]
        f (maxSoFar, indexOfMax) i
          | collatzOfI > maxSoFar = (collatzOfI, i)
          | otherwise             = (maxSoFar, indexOfMax)
            where collatzOfI = collatz i

maximumCollatzUnder_with_foldl_and_maximum n = index
  where (_, index) = foldl' f (0, 0) [1..n]
        f acc i = maximum [acc, (collatz i, i)]

-- ***********************************************
-- these run out of stack space with n = 1000000
maximumCollatzUnder_with_comprehension n = index
  where (_, index) = maximum [(collatz i, i) | i <- [1..n]]

maximumCollatzUnder_with_map n = index
  where (_, index) = maximum $ map (\i -> (collatz i, i)) [1..n]
  
maximumCollatzUnder_with_foldr n = index
  where (_, index) = foldr f (0, 0) [1..n]
        f i (maxSoFar, indexOfMax)
          | collatzOfI > maxSoFar = (collatzOfI, i)
          | otherwise             = (maxSoFar, indexOfMax)
            where collatzOfI = collatz i
