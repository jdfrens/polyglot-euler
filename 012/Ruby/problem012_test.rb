require "test/unit"

require_relative "problem012"

class TestProblem012 < Test::Unit::TestCase

  def test_problem012
    assert_equal 1, 1.problem012
    assert_equal 3, 2.problem012
    assert_equal 6, 3.problem012
    assert_equal 6, 4.problem012
    assert_equal 28, 5.problem012
    assert_equal 28, 6.problem012
  end

end
