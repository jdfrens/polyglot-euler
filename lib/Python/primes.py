from functional import foldl

def primes_up_to(n):
    return primes_up_to_acc(n, 2, [])
    
def primes_up_to_acc(n, i, primes):
    if i > n:
        return primes
    else:
        if is_prime(i, primes):
            primes.append(i)
        primes_up_to_acc(n, i+1, primes)
        return primes

def is_prime(i, primes):
    return not foldl(lambda a, b: a or b, False, [i % p == 0 for p in primes])
