-module(problem012_main).

-export([main/1]).
-import(problem012, [problem012/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = problem012(I), 
	io:format("~w~n", [S]), 
	init:stop().
