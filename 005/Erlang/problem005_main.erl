-module(problem005_main).

-export([main/1]).
-import(problem005, [smallest_multiple/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = problem005:smallest_multiple(I), 
	io:format("~w~n", [S]), 
	init:stop().
