require "test/unit"

require_relative "problem006"

class TestProblem006 < Test::Unit::TestCase

  def test_diff_squares_sums
    assert_equal 0, 1.diff_squares_sums
    assert_equal 4, 2.diff_squares_sums
    assert_equal 22, 3.diff_squares_sums
    assert_equal 170, 5.diff_squares_sums
    assert_equal 2640, 10.diff_squares_sums
  end

  def test_sum_of_squares
    assert_equal 1, 1.sum_of_squares
    assert_equal 5, 2.sum_of_squares
    assert_equal 14, 3.sum_of_squares
    assert_equal 55, 5.sum_of_squares
  end

  def test_square_of_sum
    assert_equal 1, 1.square_of_sum
    assert_equal 9, 2.square_of_sum
    assert_equal 36, 3.square_of_sum
    assert_equal 225, 5.square_of_sum
  end

end
