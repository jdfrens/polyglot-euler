#!/usr/bin/env swipl -q -t go -s

go :- 
	consult(problemDDD),
	run_tests.

:- begin_tests(problemDDD).

/* TODO: write Prolog tests */
test(computation) :- fail.

:- end_tests(problemDDD).
