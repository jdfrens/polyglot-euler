require "test/unit"

require "problem008"

class TestProblem008 < Test::Unit::TestCase

  def test_largest_five_digit_product
    assert_equal 0, 1234.largest_five_digit_product
    assert_equal 1890, 23579.largest_five_digit_product
    assert_equal 1890, 123579.largest_five_digit_product
    assert_equal 1890, 235791.largest_five_digit_product
    assert_equal 3125, 223355555337.largest_five_digit_product
    assert_equal 1890, 123223957112110.largest_five_digit_product
    assert_equal 32, 1111222221111113.largest_five_digit_product
  end
  
end