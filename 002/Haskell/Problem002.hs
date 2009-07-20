module Problem002 (fibSum, fibList, takeFibs) where

fibSum n = sum $ filter even $ takeFibs n

fibList = 1 : 2 : zipWith (+) fibList (tail fibList)

takeFibs n = takeWhile (<=n) fibList
