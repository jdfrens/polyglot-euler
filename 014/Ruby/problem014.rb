$LOAD_PATH << "../../lib/Ruby"

class Integer
  
  @@collatz = Array.new(10000000)

  def collatz
    if self > @@collatz.length
      self.raw_collatz
    else
      @@collatz[self] ||= self.raw_collatz
    end      
  end

  def raw_collatz
    if self == 1
      return 1
    elsif self.even?
      (self / 2).collatz + 1
    else
      (3 * self + 1).collatz + 1
    end
  end

  def maximum_collatz_under
    index = -1
    max = -1
    (1..self).each do |i|
      collatzOfI = i.collatz
      if collatzOfI > max
        index, max = i, collatzOfI
      end
    end
    index
  end

end
