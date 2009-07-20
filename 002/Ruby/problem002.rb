class Integer
  def fib_sum
    fibs_upto.select { |n| n.even? }.inject(0) { |sum, n| sum + n }
  end
  
  def fibs_upto
    if zero?
      []
    else
      fibs_upto_helper(2, 1, [])
    end
  end
  
  private
  
  def fibs_upto_helper(first, second, fibs)
    if first > self
      [second] + fibs
    else
      fibs_upto_helper(first + second, first, [second] + fibs)
    end
  end
end
