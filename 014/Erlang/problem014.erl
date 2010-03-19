-module(problem014).
-export([collatz/1, maximum_collatz_under/1]).

-import(lists, [map/2, max/1, seq/2]).

collatz(1) -> 1;
collatz(N) ->
  if
    N rem 2 == 0 ->
      1 + collatz(N div 2);
    true ->
      1 + collatz(3 * N + 1)
  end.

maximum_collatz_under(N) -> 
  {_, Index} = max(map(fun (X) -> {collatz(X), X} end, seq(1, N))),
  Index.
