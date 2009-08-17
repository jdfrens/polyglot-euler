-module(problem008_tests).

-include_lib("eunit/include/eunit.hrl").
-import(problem008).

largest_five_digit_product_test_() -> [
  ?_assertEqual(0, problem008:largest_five_digit_product(1234)),
  ?_assertEqual(1890, problem008:largest_five_digit_product(23579)),
  ?_assertEqual(1890, problem008:largest_five_digit_product(123579)),
  ?_assertEqual(1890, problem008:largest_five_digit_product(235791)),
  ?_assertEqual(3125, problem008:largest_five_digit_product(223355555337)),
  ?_assertEqual(1890, problem008:largest_five_digit_product(123223957112110)),
  ?_assertEqual(32, problem008:largest_five_digit_product(1111222221111113)),
  ?_assert(true)
  ].

