require "test/unit"

require "problem010"

class TestProblem010 < Test::Unit::TestCase

  def test_sum_of_primes_below
    assert_equal 0, 1.sum_of_primes_below
    assert_equal 2, 2.sum_of_primes_below
    assert_equal 5, 3.sum_of_primes_below
    assert_equal 5, 4.sum_of_primes_below
    assert_equal 10, 5.sum_of_primes_below
    assert_equal 17, 10.sum_of_primes_below
  end
  
end