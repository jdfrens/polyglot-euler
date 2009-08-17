class Integer

  def nth_prime
    if self == 1
      2
    else
      (self-1).nth_prime_after(3, 1 * 2)
    end
  end

  def nth_prime_after(p, product_of_primes)
    n = self
    while n > 1
      old_p = p
      p = (p+2).next_prime(product_of_primes)
      product_of_primes *= old_p
      n = n - 1
    end
    p
  end

  def next_prime(product_of_primes)
    n = self
    while not n.is_prime(product_of_primes) do
      n = n + 2
    end
    n
  end
  
  def is_prime(product_of_primes)
    gcd(product_of_primes) == 1
  end

  def gcd(b)
    a = self
    while b != 0
      prev_a = a
      a = b
      b = prev_a.remainder(b)
    end
    a
  end

end
