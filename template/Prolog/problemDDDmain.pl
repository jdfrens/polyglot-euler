#!/usr/bin/env swipl -q -t go -s

go :-
	consult(problemDDD),
    current_prolog_flag(argv, Arguments),
    append(_SytemArgs, [--|Args], Arguments), !,
    go(Args).

go([Arg]) :-
	atom_chars(Arg, String),
	name(N, String),
	/* TODO: use Prolog computation */
	computation(N, Answer),
	write_canonical(Answer), nl,
	halt.

go(_) :- halt(1).
