-module(problem006_main).

-export([main/1]).
-import(problem006, [diff_squares_sums/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = diff_squares_sums(I), 
	io:format("~w~n", [S]), 
	init:stop().
