class Integer
  def self.primes(options)
    @@generator ||= PrimeGenerator.new
    @@generator.upto(options[:less_than])
  end
  
  def factors()
    if self == 1
      [1]
    else
      low_factors = (1..Math.sqrt(self).round).to_a.select { |n| self % n == 0 }
      high_factors = low_factors.map { |n| self / n }.reverse
      low_factors + high_factors
    end
  end
  
  def triangle_number
    (1..self).to_a.inject(0) { |sum, n| sum + n }
  end
  
  def factorial
    acc = 1
    (1..self).each do |i|
      acc *= i
    end
    acc
  end
end

class PrimeGenerator
  def upto(n)
    primes = []
    (2..n).each do |i|
      if primes.all? { |p| i % p != 0 }
        primes << i
      end
    end
    primes
  end
end
