require "test/unit"

require_relative "problem005"

class TestProblem005 < Test::Unit::TestCase

  def test_smallest_multiple
    assert_equal    1,  1.smallest_multiple
    assert_equal    2,  2.smallest_multiple
    assert_equal    6,  3.smallest_multiple
    assert_equal   12,  4.smallest_multiple
    assert_equal   60,  5.smallest_multiple
    assert_equal   60,  6.smallest_multiple
    assert_equal 2520, 10.smallest_multiple
  end

end
