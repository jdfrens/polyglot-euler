-module(problem009).
-export([pythagorean_triplet/1]).

-import(lists, [seq/2]).

pythagorean_triplet(N) ->
  [Answer | _] = [A * B * C || 
                  A <- seq(1,N), B <- seq(1, N-A), C <- [N - A - B], 
                  A + B + C == N,
                  A*A + B*B == C*C],
  Answer.

