#!/usr/bin/env swipl -q -t go -f

go :- 
	consult(problem002),
	run_tests.

:- begin_tests(problem002).

test(fibSum) :-
 fibSum(0,0).
test(fibSum) :-
 fibSum(1,0).
test(fibSum) :-
 fibSum(2,2).
test(fibSum) :-
 fibSum(33,10).
test(fibSum) :-
 fibSum(34,44).
test(fibSum) :-
 fibSum(35,44).

test(takeFibs) :-
	takeFibs(0, []).
test(takeFibs) :-
	takeFibs(1, [1]).
test(takeFibs) :-
	takeFibs(2, [2, 1]).
test(takeFibs) :-
	takeFibs(33, [21, 13, 8, 5, 3, 2, 1]).
test(takeFibs) :-
	takeFibs(34, [34, 21, 13, 8, 5, 3, 2, 1]).

:- end_tests(problem002).