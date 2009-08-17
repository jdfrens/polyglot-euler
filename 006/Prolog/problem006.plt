#!/usr/bin/env swipl -q -t go -s

go :- 
	consult(problem006),
	run_tests.

:- begin_tests(problem006).

test(diff_squares_sums) :- diff_squares_sums(1, 0).
test(diff_squares_sums) :- diff_squares_sums(2, 4).
test(diff_squares_sums) :- diff_squares_sums(3, 22).
test(diff_squares_sums) :- diff_squares_sums(5, 170).
test(diff_squares_sums) :- diff_squares_sums(10, 2640).

test(sum_of_squares) :- sum_of_squares(1, 1).
test(sum_of_squares) :- sum_of_squares(2, 5).
test(sum_of_squares) :- sum_of_squares(3, 14).
test(sum_of_squares) :- sum_of_squares(5, 55).

test(square_of_sum) :- square_of_sum(1, 1).
test(square_of_sum) :- square_of_sum(2, 9).
test(square_of_sum) :- square_of_sum(3, 36).
test(square_of_sum) :- square_of_sum(5, 225).


:- end_tests(problem006).
