module Problem009 (pythagoreanTriplet) where

pythagoreanTriplet :: Integer -> Integer
pythagoreanTriplet n = 
  head [ a * b * c | a <- [1..n], b <- [1..(n-a)], c <- [n-a-b], a^2 + b^2 == c^2]
