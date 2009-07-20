class Integer
  def greatest_prime_factor
    self.gpfSearch(2)
  end
  
  def gpfSearch(f)
    n = self
    while n != f
      if n % f == 0
        n = n / f
      else
        f = f + 1
      end
    end
    n
  end
end
