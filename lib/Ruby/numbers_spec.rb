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
  
  it "should compute triangle numbers" do
    1.triangle_number.should == 1
    2.triangle_number.should == 3
    3.triangle_number.should == 6
    4.triangle_number.should == 10
    5.triangle_number.should == 15
    6.triangle_number.should == 21
    7.triangle_number.should == 28
    8.triangle_number.should == 36
    9.triangle_number.should == 45
    10.triangle_number.should == 55
  end
  
  it "should have factorial" do
    1.factorial.should == 1
    2.factorial.should == 2
    3.factorial.should == 6
    5.factorial.should == 120
    6.factorial.should == 720
  end
end
