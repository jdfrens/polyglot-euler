-module(problem009_main).

-export([main/1]).
-import(problem009, [pythagorean_triplet/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = pythagorean_triplet(I), 
	io:format("~w~n", [S]), 
	init:stop().
