import math
import functools

def primes_up_to(n):
    primes = []
    i = 2
    while i <= n:
        if is_prime(i, primes):
            primes.append(i)
        i = i + 1
    return primes

def is_prime(i, primes):
    return not functools.reduce(
                lambda a, b: a or b, 
                [i % p == 0 for p in primes], 
                False)

class Factors:
    def __init__(self, n):
        self.n = n
        self.low_factors_cache = []
        self.high_factors_cache = []
        
    def factors(self):
        return self.low_factors() + self.high_factors()
        
    def low_factors(self):
        if self.low_factors_cache == []:
            self.low_factors_cache = list(filter(lambda a: self.n % a == 0, range(1, int(math.sqrt(self.n))+1)))
        return self.low_factors_cache
        
    def high_factors(self):
        if self.high_factors_cache == []:
            self.high_factors_cache = list(map(lambda a: self.n // a, reversed(self.low_factors())))
        return self.high_factors_cache

def factors(n):
    if n == 1:
        return [1]
    return Factors(n).factors()
    
def triangle_number(n):
    return sum(range(1, n+1))
