-module(problem010).
-export([sum_of_primes_below/1]).

-import(primes, [primes_up_to/1]).
-import(lists, [sum/1]).

sum_of_primes_below(N) -> sum(primes_up_to(N)).

