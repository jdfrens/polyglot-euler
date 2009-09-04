-module(primes_tests).

-include_lib("eunit/include/eunit.hrl").
-import(primes, [primes_up_to/1, factors/1]).

primes_up_to_test_() -> [
  ?_assertEqual([2], primes_up_to(2)),
  ?_assertEqual([2, 3], primes_up_to(3)),
  ?_assertEqual([2, 3], primes_up_to(4)),
  ?_assertEqual([2, 3, 5, 7], primes_up_to(8)),
  ?_assertEqual([2, 3, 5, 7, 11, 13, 17, 19, 23, 29], primes_up_to(29)),
  ?_assertEqual([2, 3, 5, 7, 11, 13, 17, 19, 23, 29], primes_up_to(30))
  ].

factors_test_() -> [
  ?_assertEqual([1], factors(1)),
  ?_assertEqual([1, 3], factors(3)),
  ?_assertEqual([1, 2, 3, 6], factors(6)),
  ?_assertEqual([1, 2, 5, 10], factors(10)),
  ?_assertEqual([1, 3, 5, 15], factors(15)),
  ?_assertEqual([1, 3, 7, 21], factors(21)),
  ?_assertEqual([1, 2, 4, 7, 14, 28], factors(28))
  ].
