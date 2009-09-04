$LOAD_PATH << "../../lib/Ruby"

require "numbers"

class Integer

  def sum_of_primes_below
    Integer.primes(:less_than => self).inject(0) { |sum, n| sum + n }
  end

end
