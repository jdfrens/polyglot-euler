-module(problem012).
-export([problem012/1]).

-import(numbers, [factors/1, triangle_number/1]).

problem012(N) -> problem012(1, N).

problem012(I, N) ->
  case length(factors(triangle_number(I))) >= N of
    true -> triangle_number(I);
    false -> problem012(I + 1, N)
  end.
