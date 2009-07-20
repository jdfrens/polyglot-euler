#!/usr/bin/env swipl -q -t go -s

go :- 
	consult(problem004),
	run_tests.

:- begin_tests(problem004).

test(is_palindrome) :-
    is_palindrome(9).
test(is_palindrome) :-
    is_palindrome(33).
test(is_palindrome) :-
    is_palindrome(787).
test(is_palindrome) :-
    is_palindrome(1192882911).
test(is_palindrome) :-
    is_palindrome(7676767).

test(is_palindrome, fail) :-
    is_palindrome(91).
test(is_palindrome, fail) :-
    is_palindrome(533).
test(is_palindrome, fail) :-
    is_palindrome(7287).
test(is_palindrome, fail) :-
    is_palindrome(11292882911).
test(is_palindrome, fail) :-
    is_palindrome(76767667).
    
test(find_palindrome_product) :-
    find_palindrome_product(10, 9009).

:- end_tests(problem004).
