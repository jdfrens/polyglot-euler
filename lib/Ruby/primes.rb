class Integer
  def self.primes(options)
    @@generator ||= PrimeGenerator.new
    @@generator.upto(options[:less_than])
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
