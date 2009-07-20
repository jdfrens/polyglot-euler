module Problem004 (findPalindromeProduct, isPalindrome) where

findPalindromeProduct :: Integer -> Integer
findPalindromeProduct n =
  maximum [x * y | x <- range, y <- range, isPalindrome (x * y)]
    where range = [n..(n*10-1)]

isPalindrome n = reverse (show n) == (show n)