-module(problem006).
-export([diff_squares_sums/1, sum_of_squares/1, square_of_sum/1]).

diff_squares_sums(N) -> square_of_sum(N) - sum_of_squares(N).

sum_of_squares(N) -> N * (N + 1) * (2 * N + 1) div 6.

square_of_sum(N) -> Sum = N * (N + 1) div 2, Sum * Sum.
