#!/usr/bin/env swipl -q -t go -s

go :- 
	consult(problem012),
	run_tests.

:- begin_tests(problem012).

test(problem012) :- problem012(1, 1).
test(problem012) :- problem012(2, 3).
test(problem012) :- problem012(3, 6).
test(problem012) :- problem012(4, 6).
test(problem012) :- problem012(5, 28).
test(problem012) :- problem012(6, 28).


:- end_tests(problem012).
