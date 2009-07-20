-module(problem002). 
-export([fibSum/1, takeFibs/1]).

fibSum(N) -> lists:sum(lists:filter(fun(E) -> (E rem 2) =:= 0 end, takeFibs(N))).

takeFibs(N) ->
	if
	  N == 0 -> [];
	  true   -> takeFibs(N, 2, 1, [])
    end.

takeFibs(N, First, Second, Fibs) ->
	if
		First > N -> [Second | Fibs];
		true      -> takeFibs(N, First + Second, First, [Second | Fibs])
	end.