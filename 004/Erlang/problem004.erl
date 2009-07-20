-module(problem004).
-export([findPalindromeProduct/1, isPalindrome/1]).
-use(lists).

findPalindromeProduct(N) -> 
  lists:max([X * Y || X <- range(N), Y <- range(N), isPalindrome(X*Y)]).
  
range(N) -> lists:seq(N, N*10-1).

isPalindrome(N) -> lists:reverse(integer_to_list(N)) =:= integer_to_list(N).
