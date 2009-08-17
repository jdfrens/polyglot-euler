def nth_prime(n):
    if n == 1:
        return 2
    else:
        return nth_prime_after(n-1, 3, 1 * 2)
        
def nth_prime_after(n, p, product_of_primes):
    if n == 1:
        return p
    else:
        return nth_prime_after(n-1, next_prime(p+2, product_of_primes), product_of_primes * p)

def next_prime(n, product_of_primes):
    if is_prime(n, product_of_primes):
        return n
    else:
        return next_prime(n+2, product_of_primes)

def is_prime(n, product_of_primes):
    return gcd(product_of_primes, n) == 1

def gcd(a, b):
    if b == 0:
        return a
    else:
        return gcd(b, a % b)
