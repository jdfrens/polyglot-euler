class Integer
  def sum35
    (0..self).select { |n| n.interesting? }.inject(0) { |sum, n| sum + n }
  end
  
  def interesting?
    self.remainder(3) == 0 || self.remainder(5) == 0
  end
end