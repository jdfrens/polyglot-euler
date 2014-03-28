require_relative "problem004"

describe Integer do
  it "should recognize palindromes" do
    9.should be_palindrome
    33.should be_palindrome
    131.should be_palindrome
    451121154.should be_palindrome
    249942.should be_palindrome
  end

  it "should recognize non-palindromes" do
    19.should_not be_palindrome
    633.should_not be_palindrome
    1231.should_not be_palindrome
    4561121154.should_not be_palindrome
    22499432.should_not be_palindrome
  end

  it "should find palindrome product" do
    10.find_palindrome_product.should == 9009
  end
end
