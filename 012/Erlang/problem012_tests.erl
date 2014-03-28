-module(problem012_tests).

-include_lib("eunit/include/eunit.hrl").

problem012_test_() -> [
  ?_assertEqual(1, problem012:problem012(1)),
  ?_assertEqual(3, problem012:problem012(2)),
  ?_assertEqual(6, problem012:problem012(3)),
  ?_assertEqual(6, problem012:problem012(4)),
  ?_assertEqual(28, problem012:problem012(5)),
  ?_assertEqual(28, problem012:problem012(6)),
  ?_assert(true)
  ].
