-module(problem005_tests).

-include_lib("eunit/include/eunit.hrl").
-import(problem005, [smallest_multiple/1]).

smallest_multiple_test_() -> [
  ?_assertEqual(   1, smallest_multiple( 1)),
  ?_assertEqual(   2, smallest_multiple( 2)),
  ?_assertEqual(   6, smallest_multiple( 3)),
  ?_assertEqual(  12, smallest_multiple( 4)),
  ?_assertEqual(  60, smallest_multiple( 5)),
  ?_assertEqual(  60, smallest_multiple( 6)),
  ?_assertEqual(2520, smallest_multiple(10))
	].
