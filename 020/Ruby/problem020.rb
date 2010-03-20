$LOAD_PATH << "../../lib/Ruby"

require 'numbers'

class Integer

  def sum_of_digits_of_factorial
    self.factorial.sum_of_digits
  end

  def sum_of_digits
    if self < 10
      self
    else
      self % 10 + (self / 10).sum_of_digits
    end
  end

end
