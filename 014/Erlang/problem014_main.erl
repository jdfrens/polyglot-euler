-module(problem014_main).

-export([main/1]).
-import(problem014, [maximum_collatz_under/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = maximum_collatz_under(I), 
	io:format("~w~n", [S]), 
	init:stop().
