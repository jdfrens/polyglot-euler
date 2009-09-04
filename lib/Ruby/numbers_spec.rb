require 'numbers'
require 'spec'

describe Integer do
  it "should generate primes" do
    Integer.primes(:less_than => 2).should == [2]
    Integer.primes(:less_than => 3).should == [2, 3]
    Integer.primes(:less_than => 9).should == [2, 3, 5, 7]
    Integer.primes(:less_than => 30).should == 
      [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  end
  
  it "should have factors" do
    1.factors.should == [1]
    3.factors.should == [1, 3]
    6.factors.should == [1, 2, 3, 6]
    10.factors.should == [1, 2, 5, 10]
    15.factors.should == [1, 3, 5, 15]
    21.factors.should == [1, 3, 7, 21]
    28.factors.should == [1, 2, 4, 7, 14, 28]
  end
end