#!/usr/bin/env swipl -q -t go -s

go :- 
	consult(primes),
	run_tests.

:- begin_tests(primes).

test(primes) :-
  primes(2, [2]).
test(primes) :-
  primes(3, [2, 3]).
test(primes) :-
  primes(10, [2, 3, 5, 7]).
test(primes) :-
  primes(30, [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]).
  
test(primes2) :-
  primes2(2, [2]).
test(primes2) :-
  primes2(3, [3, 2]).
test(primes2) :-
  primes2(10, [7, 5, 3, 2]).
test(primes2) :-
  primes2(30, [29, 23, 19, 17, 13, 11, 7, 5, 3, 2]).
  
test(prime_factorization) :-
  prime_factorization(2, [2]).
test(prime_factorization) :-
  prime_factorization(3, [3]).
test(prime_factorization) :-
  prime_factorization(4, [2, 2]).
test(prime_factorization) :-
  prime_factorization(5, [5]).
test(prime_factorization) :-
  prime_factorization(6, [2, 3]).
test(prime_factorization) :-
  prime_factorization(4914, [2, 3, 3, 3, 7, 13]).
  
:- end_tests(primes).
