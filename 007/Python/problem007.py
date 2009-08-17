def nth_prime(n):
    if n == 1:
        return 2
    else:
        return nth_prime_after(n-1, 3, 1 * 2)
        
def nth_prime_after(n, p, product_of_primes):
    while n > 1:
        old_p = p
        p = next_prime(p+2, product_of_primes)
        product_of_primes *= old_p
        n = n - 1
    return p

def next_prime(n, product_of_primes):
    while not is_prime(n, product_of_primes):
        n = n + 2
    return n

def is_prime(n, product_of_primes):
    return gcd(product_of_primes, n) == 1

def gcd(a, b):
    while b != 0:
        old_a = a
        a = b
        b = old_a % b
    return a