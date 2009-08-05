-module(problem004_main).

-export([main/1]).
-import(problem004, [findPalindromeProduct/1]).

main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = problem004:findPalindromeProduct(I), 
	io:format("~w~n", [S]), 
	init:stop().
