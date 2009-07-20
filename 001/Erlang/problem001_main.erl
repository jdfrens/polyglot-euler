-module(problem001_main).

-export([main/1]).
-import(problem001, [sum35/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = problem001:sum35(I), 
	io:format("~w~n", [S]),
	init:stop().
