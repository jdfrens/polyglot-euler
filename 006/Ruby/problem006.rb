class Integer

  def diff_squares_sums
    square_of_sum - sum_of_squares
  end

  def sum_of_squares
    self * (self + 1) * (2 * self + 1) / 6
  end

  def square_of_sum
    sum = self * (self + 1) / 2
    sum * sum
  end

end
