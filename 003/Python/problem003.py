def greatestPrimeFactor(n):
    return gpfSearch(n, 2)
    
def gpfSearch(n, f):
  while n != f:
    if divides(n, f):
      n = n / f
    else:
      f = f + 1
  return f

def divides(n, f):
  return n % f == 0
