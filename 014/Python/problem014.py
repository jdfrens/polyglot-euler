def collatz(n):
    if n == 1:
        return 1
    elif n % 2 == 0:
        return collatz(n / 2) + 1
    else:
        return collatz(3 * n + 1) + 1
    
def maximum_collatz_under(n):
    if n == 1:
        return 1
    maximum = 0
    maxIndex = 0
    for i in range(1, n+1):
        collatzOfI = collatz(i)
        if collatzOfI > maximum:
            maximum = collatzOfI
            maxIndex = i
    return maxIndex    
