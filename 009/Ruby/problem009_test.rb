require "test/unit"

require_relative "problem009"

class TestProblem009 < Test::Unit::TestCase

  def test_pythagorean_triplet
    assert_equal 60, 12.pythagorean_triplet
    assert_equal 480, 24.pythagorean_triplet
    assert_equal 453960, 234.pythagorean_triplet
  end

end
