def diff_squares_sums(n):
    return square_of_sum(n) - sum_of_squares(n)
    
def sum_of_squares(n):
    return n * (n + 1) * (2 * n + 1) / 6
    
def square_of_sum(n):
    sum = n * (n + 1) / 2
    return sum * sum
    
