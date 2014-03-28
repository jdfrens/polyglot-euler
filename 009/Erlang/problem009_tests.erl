-module(problem009_tests).

-include_lib("eunit/include/eunit.hrl").

pythagorean_triplet_test_() ->
  [
  ?_assertEqual(60, problem009:pythagorean_triplet(12)),
  ?_assertEqual(480, problem009:pythagorean_triplet(24)),
  ?_assertEqual(453960, problem009:pythagorean_triplet(234)),
  ?_assert(true)
  ].
