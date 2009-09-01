from functional import foldl

def primes_up_to(n):
    primes = []
    i = 2
    while i <= n:
        if is_prime(i, primes):
            primes.append(i)
        i = i + 1
    return primes

def is_prime(i, primes):
    return not foldl(lambda a, b: a or b, False, [i % p == 0 for p in primes])
