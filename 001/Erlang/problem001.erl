-module(problem001). 
-export([sum35/1, interesting_number/1]).

-import(lists, [sum/1, seq/2]).

sum35(N) -> sum([X || X <- seq(0,N), interesting_number(X)]).

interesting_number(N) -> (N rem 3 == 0) or (N rem 5 == 0).