require "test/unit"

require_relative "problem007"

class TestProblem007 < Test::Unit::TestCase

  def test_nth_prime
    assert_equal 2, 1.nth_prime
    assert_equal 3, 2.nth_prime
    assert_equal 5, 3.nth_prime
    assert_equal 7, 4.nth_prime
    assert_equal 11, 5.nth_prime
    assert_equal 13, 6.nth_prime
  end

end
