-module(numbers_tests).

-include_lib("eunit/include/eunit.hrl").
-import(numbers, [primes_up_to/1, factorial/1, factors/1, triangle_number/1]).

primes_up_to_test_() -> [
  ?_assertEqual([2], primes_up_to(2)),
  ?_assertEqual([2, 3], primes_up_to(3)),
  ?_assertEqual([2, 3], primes_up_to(4)),
  ?_assertEqual([2, 3, 5, 7], primes_up_to(8)),
  ?_assertEqual([2, 3, 5, 7, 11, 13, 17, 19, 23, 29], primes_up_to(29)),
  ?_assertEqual([2, 3, 5, 7, 11, 13, 17, 19, 23, 29], primes_up_to(30))
  ].

factors_test_() -> [
  ?_assertEqual([1], factors(1)),
  ?_assertEqual([1, 3], factors(3)),
  ?_assertEqual([1, 2, 3, 6], factors(6)),
  ?_assertEqual([1, 2, 5, 10], factors(10)),
  ?_assertEqual([1, 3, 5, 15], factors(15)),
  ?_assertEqual([1, 3, 7, 21], factors(21)),
  ?_assertEqual([1, 2, 4, 7, 14, 28], factors(28))
  ].

triangle_number_test_() -> [
  ?_assertEqual(1, triangle_number(1)),
  ?_assertEqual(3, triangle_number(2)), 
  ?_assertEqual(6, triangle_number(3)),
  ?_assertEqual(10, triangle_number(4)),
  ?_assertEqual(15, triangle_number(5)),
  ?_assertEqual(21, triangle_number(6)),
  ?_assertEqual(28, triangle_number(7)),
  ?_assertEqual(36, triangle_number(8)),
  ?_assertEqual(45, triangle_number(9)),
  ?_assertEqual(55, triangle_number(10))
  ].

factorial_number_test_() -> [
  ?_assertEqual(1, factorial(1)),
  ?_assertEqual(2, factorial(2)),
  ?_assertEqual(6, factorial(3)),
  ?_assertEqual(120, factorial(5)),
  ?_assertEqual(720, factorial(6))
  ].
