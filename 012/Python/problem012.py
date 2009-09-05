import numbers

def problem012(n):
    i = 1
    while len(numbers.factors(numbers.triangle_number(i))) < n:
        i = i + 1
    return numbers.triangle_number(i)
    
