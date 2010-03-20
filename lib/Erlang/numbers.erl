-module(numbers).
-export([primes_up_to/1, factorial/1, factors/1, triangle_number/1]).

-import(lists, [any/2, reverse/1, seq/2]).
-import(math, [sqrt/1]).

primes_up_to(N) -> reverse(primes_up_to(N, 2, [])).

primes_up_to(N, I, Primes) when I > N -> Primes;
primes_up_to(N, I, Primes) ->
  case is_prime(I, Primes) of
    true -> primes_up_to(N, I+1, [I | Primes]);
    false -> primes_up_to(N, I+1, Primes)
  end.
  
is_prime(I, Primes) -> not any(fun(P) -> I rem P == 0 end, Primes).

factors(1) -> [1];
factors(N) -> 
  IsDivisor = fun(F) -> N rem F == 0 end,
  OtherFactor = fun(F) -> N div F end,
  LowFactors = lists:filter(IsDivisor, seq(1, round(sqrt(N)))),
  HighFactors = lists:map(OtherFactor, LowFactors),
  lists:append(LowFactors, lists:reverse(HighFactors)).

factorial(N) -> lists:foldl(fun (I, Acc) -> I * Acc end, 1, seq(1, N)).

triangle_number(N) -> lists:sum(seq(1, N)).
