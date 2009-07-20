def fib_sum(n):
    return sum(filter(even, fibs_upto(n)))

def fibs_upto(n):
    if n == 0:
        return []
    else:
        return fibs_upto_helper(n, 2, 1, [])
        
def fibs_upto_helper(n, first, second, fibs):
    if first > n:
        return [second] + fibs
    else:
        return fibs_upto_helper(n, first + second, first, [second] + fibs)

def even(n):
    return n % 2 == 0
