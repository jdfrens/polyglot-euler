-module(problem007).
-export([nth_prime/1]).

nth_prime(1) -> 2;
nth_prime(N) -> nth_prime_after(N-1, 3, 1 * 2).

nth_prime_after(1, P, _) -> P;
nth_prime_after(N, P, ProductOfPrimes) -> nth_prime_after(N-1, next_prime(P+2, ProductOfPrimes), ProductOfPrimes * P).

next_prime(N, ProductOfPrimes) -> 
  case is_prime(N, ProductOfPrimes) of
    true -> N;
    false -> next_prime(N+2, ProductOfPrimes)
  end.

is_prime(N, ProductOfPrimes) -> gcd(ProductOfPrimes, N) == 1.

gcd(A, B) when B == 0 -> A;
gcd(A, B) -> gcd(B, A rem B).
