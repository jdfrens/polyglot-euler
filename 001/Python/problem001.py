def sum35(n):
    return sum([m for m in range(0, n+1) if interestingNumber(m)])

def interestingNumber(n):
	return n % 3 == 0 or n % 5 == 0
