-module(primes).
-export([primes_up_to/1]).

-import(lists, [any/2, reverse/1]).

primes_up_to(N) -> reverse(primes_up_to(N, 2, [])).

primes_up_to(N, I, Primes) when I > N -> Primes;
primes_up_to(N, I, Primes) ->
  case is_prime(I, Primes) of
    true -> primes_up_to(N, I+1, [I | Primes]);
    false -> primes_up_to(N, I+1, Primes)
  end.
  
is_prime(I, Primes) -> not any(fun(P) -> I rem P == 0 end, Primes).
