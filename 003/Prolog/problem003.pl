:- use_module(library(primes)).

% Pick your implementation here.
greatest_prime_factor(N, P) :- greatest_prime_factor2(N, P).

% First implementation.
% Does NOT work for 600851475143.
% Computes primes, computes prime factors, takes max.
greatest_prime_factor1(N, P) :-
  gpf_search(N, Factors), max_list(Factors, P).

gpf_search(N, Factors) :-
  N2 is ceil(sqrt(N)), primes2(N2, Primes), include(divides(N), Primes, Factors).
  

% Second implementation.
% Works on everything I gave it.
% Recursively factors number with counter, when counter == number -> max prime factor
greatest_prime_factor2(N, P) :- gpf(2, N, P).
gpf(I, I, I) :- !.
gpf(I, R, P) :- divides(R, I), Next is R / I, gpf(I, Next, P), !.
gpf(I, R, P) :- Next is I + 1, gpf(Next, R, P).
