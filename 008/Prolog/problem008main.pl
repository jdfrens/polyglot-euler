#!/usr/bin/env swipl -q -t go -s

go :-
	consult(problem008),
    current_prolog_flag(argv, Arguments),
    append(_SytemArgs, [--|Args], Arguments), !,
    go(Args).

go([Arg]) :-
	atom_chars(Arg, String),
	name(N, String),
	largest_five_digit_product(N, Answer),
	write_canonical(Answer), nl,
	halt.

go(_) :- halt(1).
