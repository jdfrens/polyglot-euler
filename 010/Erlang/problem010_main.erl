-module(problem010_main).

-export([main/1]).
-import(problem010, [sum_of_primes_below/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = sum_of_primes_below(I), 
	io:format("~w~n", [S]), 
	init:stop().
