-module(problem002_main).

-export([main/1]).
-import(problem002, [fibSum/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = problem002:fibSum(I), 
	io:format("~w~n", [S]), 
	init:stop().
