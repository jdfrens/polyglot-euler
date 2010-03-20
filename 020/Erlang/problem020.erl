-module(problem020).
-export([sum_of_digits_of_factorial/1, sum_of_digits/1]).

-import(numbers, [factorial/1]).

sum_of_digits_of_factorial(N) -> sum_of_digits(factorial(N)).

sum_of_digits(N) when N < 10 -> N;
sum_of_digits(N) -> (N rem 10) + sum_of_digits(N div 10).
