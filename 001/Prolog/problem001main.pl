#!/usr/bin/env swipl -q -t go -f

go :-
	consult(problem001),
    current_prolog_flag(argv, Arguments),
    append(_SytemArgs, [--|Args], Arguments), !,
    go(Args).

go([Arg]) :-
	atom_chars(Arg, String),
	name(N, String),
	sum35_acc(N, Sum),
	write_canonical(Sum), nl,
	halt.

go(_) :- halt(1).
