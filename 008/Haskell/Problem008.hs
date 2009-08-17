module Problem008 (largestFiveDigitProduct) where

largestFiveDigitProduct :: Integer -> Integer
largestFiveDigitProduct n = lfdp (listify n []) 0
  where
    lfdp list@(a:b:c:d:e:rest) current = lfdp (tail list) (max current (a*b*c*d*e))
    lfdp _ current = current
    listify 0 list = list
    listify n list = listify (n `div` 10) (n `mod` 10 : list)
