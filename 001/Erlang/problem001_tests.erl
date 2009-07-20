-module(problem001_tests).

-include_lib("eunit/include/eunit.hrl").
-import(problem001, [sum35/1]).

sum35_test_() -> [
	?_assertEqual(0, sum35(0)),
	?_assertEqual(3, sum35(3)),
	?_assertEqual(8, sum35(5)),
	?_assertEqual(23, sum35(9))
	].
