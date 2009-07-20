-module(problem005_main).

-export([main/1]).
-import(problem005, [computation/1]).  % TODO: import Erang computation

% TODO: write Erlang CLI
main([A]) -> 
	I = list_to_integer(atom_to_list(A)), 
	S = problem005:computation(I), 
	io:format("~w~n", [S]), 
	init:stop().
