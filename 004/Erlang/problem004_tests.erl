-module(problem004_tests).

-include_lib("eunit/include/eunit.hrl").
-import(problem004, [findPalindromeProduct/1, isPalindrome/1]).

isPalindrome_test_() -> [
  ?_assert(isPalindrome(2)),
  ?_assert(isPalindrome(11)),
  ?_assert(isPalindrome(878)),
  ?_assert(isPalindrome(1134554311)),
  ?_assert(isPalindrome(9876789)),

  ?_assertNot(isPalindrome(21)),
  ?_assertNot(isPalindrome(116)),
  ?_assertNot(isPalindrome(8728)),
  ?_assertNot(isPalindrome(1134511345)),
  ?_assertNot(isPalindrome(98767829))
	].

findPalindromeProduct_test_() -> [
  ?_assertEqual(9009, findPalindromeProduct(10))
  ].
