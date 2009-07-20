is_palindrome(N) :- name(N, S), reverse(S, S).

find_palindrome_product(N, Product) :-
    findall(P, find_palindrome_product_helper(N, P), Ps), max_list(Ps, Product).

find_palindrome_product_helper(N, Product) :-
    Max is N * 10 - 1,
    between(N, Max, X), between(N, Max, Y),
    Product is X * Y, is_palindrome(Product).