-module(problemDDD_main).

-export([main/1]).
-import(problemDDD, [computation/1]).  % TODO: import Erang computation

% TODO: write Erlang CLI
main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = problemDDD:computation(I), 
	io:format("~w~n", [S]), 
	init:stop().
