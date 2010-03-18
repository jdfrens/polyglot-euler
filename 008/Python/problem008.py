def largest_five_digit_product(n):
    return lfdp(listify(n), 0)
    
def lfdp(list, current):
    if len(list) < 5:
        return current
    else:
        return lfdp(list[1:], max(current, product5(list)))
        
def product5(list):
    return list[0] * list[1] * list[2] * list[3] * list[4]

def listify(n):
    list = []
    while n > 0:
        list = [n % 10] + list
        n //= 10
    return list
