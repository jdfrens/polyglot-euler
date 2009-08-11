from functional import foldr

def smallest_multiple(n):
    return foldr(multiplier, 1, range(1, n+1))

def multiplier(acc, i):
    if acc % i == 0:
        return acc
    else:
        return acc * i / gcd(acc, i)

def gcd(a, b):
    if b == 0:
       return a
    else:
       return gcd(b, a % b)
