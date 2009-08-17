#!/usr/bin/env swipl -q -t go -s

go :- 
	consult(problem008),
	run_tests.

:- begin_tests(problem008).

test(largest_five_digit_product) :- largest_five_digit_product(1234, 0).
test(largest_five_digit_product) :- largest_five_digit_product(23579, 1890).
test(largest_five_digit_product) :- largest_five_digit_product(123579, 1890).
test(largest_five_digit_product) :- largest_five_digit_product(235791, 1890).
test(largest_five_digit_product) :- largest_five_digit_product(223355555337, 3125).
test(largest_five_digit_product) :- largest_five_digit_product(123223957112110, 1890).
test(largest_five_digit_product) :- largest_five_digit_product(1111222221111113, 32).


:- end_tests(problem008).
