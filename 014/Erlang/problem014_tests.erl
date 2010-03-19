-module(problem014_tests).

-include_lib("eunit/include/eunit.hrl").
-import(problem014).

collatz_test_() -> [
  ?_assertEqual(1, problem014:collatz(1)),
  ?_assertEqual(2, problem014:collatz(2)),
  ?_assertEqual(8, problem014:collatz(3)),
  ?_assertEqual(17, problem014:collatz(7)),
  ?_assertEqual(4, problem014:collatz(8)),
  ?_assertEqual(20, problem014:collatz(9)),
  ?_assertEqual(7, problem014:collatz(10)),
  ?_assert(true)
  ].

maximum_collatz_under_test_() -> [
  ?_assertEqual(1, problem014:maximum_collatz_under(1)),
  ?_assertEqual(2, problem014:maximum_collatz_under(2)),
  ?_assertEqual(3, problem014:maximum_collatz_under(3)),
  ?_assertEqual(3, problem014:maximum_collatz_under(4)),
  ?_assertEqual(7, problem014:maximum_collatz_under(7)),
  ?_assertEqual(7, problem014:maximum_collatz_under(8)),
  ?_assertEqual(9, problem014:maximum_collatz_under(9)),
  ?_assertEqual(9, problem014:maximum_collatz_under(10)),
  ?_assert(true)
  ].

