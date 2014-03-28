-module(problem010_tests).

-include_lib("eunit/include/eunit.hrl").

sum_of_primes_below_test_() -> [
  ?_assertEqual(0, problem010:sum_of_primes_below(1)),
  ?_assertEqual(2, problem010:sum_of_primes_below(2)),
  ?_assertEqual(5, problem010:sum_of_primes_below(3)),
  ?_assertEqual(5, problem010:sum_of_primes_below(4)),
  ?_assertEqual(10, problem010:sum_of_primes_below(5)),
  ?_assertEqual(17, problem010:sum_of_primes_below(10)),
  ?_assert(true)
  ].
