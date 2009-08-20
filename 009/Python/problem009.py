def pythagorean_triplet(n):
    return all_triplets(n).pop(0)

def all_triplets(n):
    return [ a * b * c for a in range(1, n) for b in range(1, n-a) for c in [n-a-b] if a*a + b*b == c*c]