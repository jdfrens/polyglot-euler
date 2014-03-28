-module(problem007_tests).

-include_lib("eunit/include/eunit.hrl").

nth_prime_test_() -> [
  ?_assertEqual(2, problem007:nth_prime(1)),
  ?_assertEqual(3, problem007:nth_prime(2)),
  ?_assertEqual(5, problem007:nth_prime(3)),
  ?_assertEqual(7, problem007:nth_prime(4)),
  ?_assertEqual(11, problem007:nth_prime(5)),
  ?_assertEqual(13, problem007:nth_prime(6)),
  ?_assert(true)
  ].
