-module(problem007_main).

-export([main/1]).
-import(problem007, [nth_prime/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = nth_prime(I), 
	io:format("~w~n", [S]), 
	init:stop().
