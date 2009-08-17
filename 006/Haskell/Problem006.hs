module Problem006 (diff_squares_sums, sum_of_squares, square_of_sum) where

diff_squares_sums :: Integer -> Integer
diff_squares_sums n = (square_of_sum n) - (sum_of_squares n)

sum_of_squares n = n * (n + 1) * (2 * n + 1) `div` 6

square_of_sum n = (n * (n + 1) `div` 2)^2
