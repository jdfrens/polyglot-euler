require "test/unit"

require "problem004"

class TestProblem004 < Test::Unit::TestCase
  def test_palindrome_huh
    assert 9.palindrome?
    assert 33.palindrome?
    assert 131.palindrome?
    assert 451121154.palindrome?
    assert 249942.palindrome?
  end
  
  def test_not_palindrome_huh
    assert ! 19.palindrome?
    assert ! 633.palindrome?
    assert ! 1231.palindrome?
    assert ! 4561121154.palindrome?
    assert ! 22499432.palindrome?
  end
  
  def test_find_palindrome_product
    assert_equal 9009, 10.find_palindrome_product
  end
  
end