:- module(primes,
  [primes/2, primes2/2, is_prime/1,
  dividedby/2, divides/2,
  prime_factorization/2
  ]).

:- use_module(library(clpfd)).

primes(N, Ps) :- numlist(2, N, Numbers), primeSearch(Numbers, Ps).
primeSearch([], []) :- !.
primeSearch([N], [N]) :- !.
primeSearch([N | Ns], [N | Qs]) :-
  exclude(dividedby(N), Ns, P2s), primeSearch(P2s, Qs).
  
primes2(N, Ps) :- primes2(3, N, [2], Ps).
primes2(I, N, Ps, Ps) :- I > N, !.
primes2(I, N, Curr, Ps) :-
  is_factored_by(I, Curr),
  I1 is I + 1,
  primes2(I1, N, [I | Curr], Ps), !.
primes2(I, N, Curr, Ps) :-
  I1 is I + 1,
  primes2(I1, N, Curr, Ps).


prime_factorization(N, Factors) :-
  is_prime(N) -> Factors = [N];
  Limit is ceil(sqrt(N)), primes(Limit, Primes),
  prime_factorization(N, Primes, Factors).
prime_factorization(N, [N | _], [N]) :- !.
prime_factorization(N, [P | Primes], [P | Factors]) :-
  N mod P =:= 0, Next is N / P,
  prime_factorization(Next, [P | Primes], Factors), !.
prime_factorization(N, [_ | Primes], Factors) :-
  prime_factorization(N, Primes, Factors).


dividedby(B,A) :- A mod B =:= 0.
divides(A,B)   :- A mod B =:= 0.



is_factored_by(_, []) :- !.
is_factored_by(I, [F | Fs]) :- I mod F > 0, is_factored_by(I, Fs).

is_prime(2) :- !.
is_prime(N) :-
  N #> 2,
  N mod 2 #= 1,
  is_prime(3, N).
is_prime(I, P) :-
  I * I #> P, !.
is_prime(I, P) :-
  P mod I > 0,
  I1 #= I + 2,
  is_prime(I1, P).
