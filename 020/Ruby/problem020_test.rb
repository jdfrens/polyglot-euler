require "test/unit"

require_relative "problem020"

class TestProblem020 < Test::Unit::TestCase

  def test_sum_of_digits_of_factorial
    assert_equal 1, 1.sum_of_digits_of_factorial
    assert_equal 6, 3.sum_of_digits_of_factorial
    assert_equal 3, 5.sum_of_digits_of_factorial
    assert_equal 9, 6.sum_of_digits_of_factorial
  end

  def test_sum_of_digits
    assert_equal 1, 1.sum_of_digits
    assert_equal 3, 12.sum_of_digits
    assert_equal 14, 86.sum_of_digits
    assert_equal 19, 1945.sum_of_digits
  end

end
