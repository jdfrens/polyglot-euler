#!/usr/bin/env swipl -q -t go -s

go :- 
	consult(problem007),
	run_tests.

:- begin_tests(problem007).

test(nth_prime) :- nth_prime(1, 2).
test(nth_prime) :- nth_prime(2, 3).
test(nth_prime) :- nth_prime(3, 5).
test(nth_prime) :- nth_prime(4, 7).
test(nth_prime) :- nth_prime(5, 11).
test(nth_prime) :- nth_prime(6, 13).


:- end_tests(problem007).
