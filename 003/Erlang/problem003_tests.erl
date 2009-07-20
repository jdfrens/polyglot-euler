-module(problem003_tests).

-include_lib("eunit/include/eunit.hrl").
-import(problem003, [greatest_prime_factor/1]).

greatest_prime_factor_test_() -> [
  ?_assertEqual(2, greatest_prime_factor(2)),
  ?_assertEqual(2, greatest_prime_factor(4)),
  ?_assertEqual(3, greatest_prime_factor(6)),
  ?_assertEqual(29, greatest_prime_factor(13195))
	].
