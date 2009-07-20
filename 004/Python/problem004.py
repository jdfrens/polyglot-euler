def is_palindrome(n):
    return `n`[::-1] == `n`

def find_palindrome_product(n):
    return max([x * y for x in range(n, n*10) for y in range(n, n*10) if is_palindrome(x * y)])
