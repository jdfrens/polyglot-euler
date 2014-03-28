require_relative "problem007"

describe Integer do

  describe "nth_prime" do

    it "should compute 2 when given 1" do
      1.nth_prime.should == 2
    end

    it "should compute 3 when given 2" do
      2.nth_prime.should == 3
    end

    it "should compute 5 when given 3" do
      3.nth_prime.should == 5
    end

    it "should compute 7 when given 4" do
      4.nth_prime.should == 7
    end

    it "should compute 11 when given 5" do
      5.nth_prime.should == 11
    end

    it "should compute 13 when given 6" do
      6.nth_prime.should == 13
    end

  end

end
