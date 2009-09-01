require "problem010"

describe Integer do

  describe "sum_of_primes_below" do
  
    it "should compute 0 when given 1" do
      1.sum_of_primes_below.should == 0
    end
  
    it "should compute 2 when given 2" do
      2.sum_of_primes_below.should == 2
    end
  
    it "should compute 5 when given 3" do
      3.sum_of_primes_below.should == 5
    end
  
    it "should compute 5 when given 4" do
      4.sum_of_primes_below.should == 5
    end
  
    it "should compute 10 when given 5" do
      5.sum_of_primes_below.should == 10
    end
  
    it "should compute 17 when given 10" do
      10.sum_of_primes_below.should == 17
    end
  
  end
  
end