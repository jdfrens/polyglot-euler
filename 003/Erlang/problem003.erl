-module(problem003). 
-export([greatest_prime_factor/1]).

greatest_prime_factor(N) -> gpfSearch(N, 2).

gpfSearch(N, F) ->
  if
    N == F       -> N;
    N rem F == 0 -> gpfSearch(N div F, F);
    true         -> gpfSearch(N, F + 1)
  end.
