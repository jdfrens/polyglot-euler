require "test/unit"

require "problem002"

class TestProblem002 < Test::Unit::TestCase

  def test_fib_sum
  	assert_equal(0, 0.fib_sum)
  	assert_equal(0, 1.fib_sum)
  	assert_equal(2, 2.fib_sum)
  	assert_equal(10, 33.fib_sum)
  	assert_equal(44, 34.fib_sum)
  	assert_equal(44, 35.fib_sum)
  end

  def test_fib_upto
  	assert_equal([], 0.fibs_upto)
  	assert_equal([1], 1.fibs_upto)
  	assert_equal([2, 1], 2.fibs_upto)
  	assert_equal([21, 13, 8, 5, 3, 2, 1], 33.fibs_upto)
  	assert_equal([34, 21, 13, 8, 5, 3, 2, 1], 34.fibs_upto)
  end  
  
end