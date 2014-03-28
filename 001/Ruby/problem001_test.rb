require "test/unit"

require_relative "problem001"

class TestProblem001 < Test::Unit::TestCase
  def test_sum35
    assert_equal(0, 0.sum35)
    assert_equal(3, 3.sum35)
    assert_equal(8, 5.sum35)
    assert_equal(23, 9.sum35)
  end
end
