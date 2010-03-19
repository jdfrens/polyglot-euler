require "test/unit"

require "problem014"

class TestProblem014 < Test::Unit::TestCase

  def test_collatz
    assert_equal 1, 1.collatz
    assert_equal 2, 2.collatz
    assert_equal 8, 3.collatz
    assert_equal 17, 7.collatz
    assert_equal 4, 8.collatz
    assert_equal 20, 9.collatz
    assert_equal 7, 10.collatz
  end
  
  def test_maximum_collatz_under
    assert_equal 1, 1.maximum_collatz_under
    assert_equal 2, 2.maximum_collatz_under
    assert_equal 3, 3.maximum_collatz_under
    assert_equal 3, 4.maximum_collatz_under
    assert_equal 7, 7.maximum_collatz_under
    assert_equal 7, 8.maximum_collatz_under
    assert_equal 9, 9.maximum_collatz_under
    assert_equal 9, 10.maximum_collatz_under
  end
  
end