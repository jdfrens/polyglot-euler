import numbers

def sum_of_digits_of_factorial(n):
    return sum_of_digits(numbers.factorial(n))
    
def sum_of_digits(n):
    if n < 10:
        return n
    else:
        return (n % 10) + sum_of_digits(n // 10)
