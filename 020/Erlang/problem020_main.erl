-module(problem020_main).

-export([main/1]).
-import(problem020, [sum_of_digits_of_factorial/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = sum_of_digits_of_factorial(I), 
	io:format("~w~n", [S]), 
	init:stop().
