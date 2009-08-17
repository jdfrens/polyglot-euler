-module(problem008).
-export([largest_five_digit_product/1, largest_five_digit_product/2]).

-import(lists, [max/1]).

largest_five_digit_product(N) -> largest_five_digit_product(list_of_digits(N), 0).

largest_five_digit_product(L, Current) when length(L) < 5 -> Current;
largest_five_digit_product([H|T], Current) ->
  largest_five_digit_product(T, max([Current, product5([H|T])])).

list_of_digits(0) -> [];
list_of_digits(N) when N < 10 -> [N];
list_of_digits(N) -> list_of_digits(N div 10) ++ [N rem 10].

product5([A, B, C, D, E | _]) -> A * B * C * D * E;
product5(_) -> 0.
