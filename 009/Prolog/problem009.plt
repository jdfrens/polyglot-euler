#!/usr/bin/env swipl -q -t go -s

go :- 
	consult(problem009),
	run_tests.

:- begin_tests(problem009).

test(pythagorean_triplet) :- pythagorean_triplet(12, 60).
test(pythagorean_triplet) :- pythagorean_triplet(24, 480).
test(pythagorean_triplet) :- pythagorean_triplet(234, 453960).


:- end_tests(problem009).
