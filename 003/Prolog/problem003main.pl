#!/usr/bin/env swipl -q -t go -s

go :-
	consult(problem003),
    current_prolog_flag(argv, Arguments),
    append(_SytemArgs, [--|Args], Arguments), !,
    go(Args).

go([Arg]) :-
	atom_chars(Arg, String),
	name(N, String),
	greatest_prime_factor(N, Answer),
	write_canonical(Answer), nl,
	halt.

go(_) :- halt(1).
