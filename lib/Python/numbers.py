from functional import foldl
import math

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

def factors(n):
    if n == 1:
        return [1]
    LowFactors = filter(lambda a: n % a == 0, range(1, int(math.sqrt(n))+1))
    HighFactors = map(lambda a: n / a, LowFactors)
    return LowFactors + HighFactors[::-1]
    
def triangle_number(n):
    return sum(range(1, n+1))
