fibSum(N, Sum) :-
	takeFibs(N, Fibs),
	include(even, Fibs, EvenFibs),
	sumlist(EvenFibs, Sum).

even(N) :- N mod 2 =:= 0.

takeFibs(N, L) :-
	N =:= 0 -> L = [];
	N > 0   -> takeFibs(N, 2, 1, [], L).
	
takeFibs(N, First, Second, Incoming, Outgoing) :-
	First > N  -> Outgoing = [Second | Incoming];
	First =< N -> Next is First+Second, takeFibs(N, Next, First, [Second | Incoming], Outgoing).
