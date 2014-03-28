require "test/unit"

require_relative "problem003"

class TestProblem003 < Test::Unit::TestCase
  def test_greatest_prime_factor
    assert_equal 2, 2.greatest_prime_factor
    assert_equal 2, 4.greatest_prime_factor
    assert_equal 3, 6.greatest_prime_factor
    assert_equal 29, 13195.greatest_prime_factor
  end
end
