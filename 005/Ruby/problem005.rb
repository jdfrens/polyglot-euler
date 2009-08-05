class Integer

  def smallest_multiple
    result = 1
    (1..self).to_a.reverse.each do |i|
      if result % i != 0
        result *= i / i.gcd(result)
      end
    end
    result
  end
  
  def gcd(other)
    if other == 0
       self
    else
      return other.gcd(self % other)
    end
  end

end
