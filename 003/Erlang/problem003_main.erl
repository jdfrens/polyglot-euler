-module(problem003_main).

-export([main/1]).
-import(problem003, [greatest_prime_factor/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = problem003:greatest_prime_factor(I), 
	io:format("~w~n", [S]), 
	init:stop().
