-module(problem020_tests).

-include_lib("eunit/include/eunit.hrl").
-import(problem020).

sum_of_digits_of_factorial_test_() -> [
  ?_assertEqual(1, problem020:sum_of_digits_of_factorial(1)),
  ?_assertEqual(6, problem020:sum_of_digits_of_factorial(3)),
  ?_assertEqual(3, problem020:sum_of_digits_of_factorial(5)),
  ?_assertEqual(9, problem020:sum_of_digits_of_factorial(6)),
  ?_assert(true)
  ].

sum_of_digits_test_() -> [
  ?_assertEqual(1, problem020:sum_of_digits(1)),
  ?_assertEqual(3, problem020:sum_of_digits(12)),
  ?_assertEqual(14, problem020:sum_of_digits(86)),
  ?_assertEqual(19, problem020:sum_of_digits(1945)),
  ?_assert(true)
  ].

