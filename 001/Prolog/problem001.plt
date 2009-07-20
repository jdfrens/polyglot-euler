#!/usr/bin/env swipl -q -t go -f

go :- 
	consult(problem001),
	run_tests.

:- begin_tests(problem001).

test(sum35) :-
  sum35(0, 0).

test(sum35) :-
  sum35(3, 3).

test(sum35) :-
  sum35(5, 8).

test(sum35) :-
  sum35(9, 23).

test(sum35) :-
  sum35(10, 33).


test(sum35_imply) :-
  sum35_imply(0, 0).

test(sum35_imply) :-
  sum35_imply(3, 3).

test(sum35_imply) :-
  sum35_imply(5, 8).

test(sum35_imply) :-
  sum35_imply(9, 23).

test(sum35_imply) :-
  sum35_imply(10, 33).


test(sum35_acc) :-
  sum35_acc(0, 0).

test(sum35_acc) :-
  sum35_acc(3, 3).

test(sum35_acc) :-
  sum35_acc(5, 8).

test(sum35_acc) :-
  sum35_acc(9, 23).

test(sum35_acc) :-
  sum35_acc(10, 33).


test(sum35_com) :-
  sum35_com(0, 0).

test(sum35_com) :-
  sum35_com(3, 3).

test(sum35_com) :-
  sum35_com(5, 8).

test(sum35_com) :-
  sum35_com(9, 23).

test(sum35_com) :-
  sum35_com(10, 33).

:- end_tests(problem001).
