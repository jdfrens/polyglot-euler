-module(problem006_tests).

-include_lib("eunit/include/eunit.hrl").
-import(problem006).

diff_squares_sums_test_() -> [
  ?_assertEqual(0, problem006:diff_squares_sums(1)),
  ?_assertEqual(4, problem006:diff_squares_sums(2)),
  ?_assertEqual(22, problem006:diff_squares_sums(3)),
  ?_assertEqual(170, problem006:diff_squares_sums(5)),
  ?_assertEqual(2640, problem006:diff_squares_sums(10)),
  ?_assert(true)
  ].

sum_of_squares_test_() -> [
  ?_assertEqual(1, problem006:sum_of_squares(1)),
  ?_assertEqual(5, problem006:sum_of_squares(2)),
  ?_assertEqual(14, problem006:sum_of_squares(3)),
  ?_assertEqual(55, problem006:sum_of_squares(5)),
  ?_assert(true)
  ].

square_of_sum_test_() -> [
  ?_assertEqual(1, problem006:square_of_sum(1)),
  ?_assertEqual(9, problem006:square_of_sum(2)),
  ?_assertEqual(36, problem006:square_of_sum(3)),
  ?_assertEqual(225, problem006:square_of_sum(5)),
  ?_assert(true)
  ].

