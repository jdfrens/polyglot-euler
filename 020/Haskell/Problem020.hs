module Problem020 (sumOfDigitsOfFactorial, sumOfDigits) where

import Numbers

sumOfDigitsOfFactorial :: Integer -> Integer
sumOfDigitsOfFactorial = sumOfDigits . factorial

sumOfDigits n
  | n < 10    = n
  | otherwise = (n `mod` 10) + sumOfDigits (n `div` 10)
