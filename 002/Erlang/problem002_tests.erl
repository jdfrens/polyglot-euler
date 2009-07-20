-module(problem002_tests).

-include_lib("eunit/include/eunit.hrl").
-import(problem002, [fibSum/1, takeFibs/1]).

fibSum_test_() -> [
	?_assertEqual(0, fibSum(0)),
	?_assertEqual(0, fibSum(1)),
	?_assertEqual(2, fibSum(2)),
	?_assertEqual(10, fibSum(33)),
	?_assertEqual(44, fibSum(34)),
	?_assertEqual(44, fibSum(35))
	].

takeFibs_test_() -> [
	?_assertEqual([], takeFibs(0)),
	?_assertEqual([1], takeFibs(1)),
	?_assertEqual([2, 1], takeFibs(2)),
	?_assertEqual([21, 13, 8, 5, 3, 2, 1], takeFibs(33)),
	?_assertEqual([34, 21, 13, 8, 5, 3, 2, 1], takeFibs(34))
	].
	