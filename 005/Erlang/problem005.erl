-module(problem005). 
-export([smallest_multiple/1]).
-use(lists).

smallest_multiple(N) -> lists:foldr(fun (A, AccIn) -> multiplier(A, AccIn) end, 1, lists:seq(1, N)).

multiplier(I, Acc) when Acc rem I == 0 -> Acc;
multiplier(I, Acc) -> Acc * I div gcd(Acc, I).

gcd(A, B) when B == 0 -> A;
gcd(A, B) -> gcd(B, A rem B).
