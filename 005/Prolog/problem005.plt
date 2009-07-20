#!/usr/bin/env swipl -q -t go -s

go :- 
	consult(problem005),
	run_tests.

:- begin_tests(problem005).

/* TODO: write Prolog tests */
test(computation) :- fail.

:- end_tests(problem005).
