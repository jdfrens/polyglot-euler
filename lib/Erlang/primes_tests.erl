-module(primes_tests).

-include_lib("eunit/include/eunit.hrl").
-import(primes, [primes_up_to/1]).

primes_up_to_test_() -> [
  ?_assertEqual([2], primes_up_to(2)),
  ?_assertEqual([2, 3], primes_up_to(3)),
  ?_assertEqual([2, 3], primes_up_to(4)),
  ?_assertEqual([2, 3, 5, 7], primes_up_to(8)),
  ?_assertEqual([2, 3, 5, 7, 11, 13, 17, 19, 23, 29], primes_up_to(29)),
  ?_assertEqual([2, 3, 5, 7, 11, 13, 17, 19, 23, 29], primes_up_to(30))
  ].

