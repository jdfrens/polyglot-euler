/* Sums up the integers that are multiples of 3 or 5. */

sum35(0, 0) :- true, !.
sum35(N, S) :-
    N > 0,
    interesting_number(N),
    N1 is N-1,
    sum35(N1,SS),
	S is SS + N,
	!.
sum35(N,S) :-
    N > 0,
	N1 is N-1,
    sum35(N1,S).

sum35_imply(0, 0) :- true, !.
sum35_imply(N, S) :-
    N > 0 -> (
      interesting_number(N) ->
        (N1 is N-1,
        sum35_imply(N1,SS),
	    S is SS + N)
	    ;
        (N1 is N-1,
        sum35_imply(N1,S))
      ).
	
sum35_acc(N, S) :- sum35_acc(N, 0, S).
sum35_acc(0, A, A) :- true, !.
sum35_acc(N, A, S) :- 
    N > 0 -> (
      interesting_number(N) ->
    	(AA is A + N,
		N1 is N-1,
    	sum35_acc(N1, AA, S))
		;
		(N1 is N-1,
    	sum35_acc(N1, A, S))
	  ).
	
sum35_com(N, S) :-
    numlist(0, N, Numbers),
	include(interesting_number, Numbers, Multiples),
	sumlist(Multiples, S).
	
interesting_number(N) :- N rem 3 =:= 0 ; N rem 5 =:= 0.