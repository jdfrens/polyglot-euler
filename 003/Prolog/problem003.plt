#!/usr/bin/env swipl -q -t go -s

go :- 
	consult(problem003),
	run_tests.

:- begin_tests(problem003).

test(greatest_prime_factor1) :-
  greatest_prime_factor1(2, 2).
test(greatest_prime_factor1) :-
  greatest_prime_factor1(4, 2).
test(greatest_prime_factor1) :-
  greatest_prime_factor1(6, 3).
test(greatest_prime_factor1) :-
  greatest_prime_factor1(13195, 29).

test(greatest_prime_factor2) :-
  greatest_prime_factor2(2, 2).
test(greatest_prime_factor2) :-
  greatest_prime_factor2(4, 2).
test(greatest_prime_factor2) :-
  greatest_prime_factor2(6, 3).
test(greatest_prime_factor2) :-
  greatest_prime_factor2(13195, 29).

:- end_tests(problem003).
