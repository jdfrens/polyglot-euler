require_relative "problem020"

describe Integer do

  describe "sum_of_digits_of_factorial" do

    it "should compute 1 when given 1" do
      1.sum_of_digits_of_factorial.should == 1
    end

    it "should compute 6 when given 3" do
      3.sum_of_digits_of_factorial.should == 6
    end

    it "should compute 3 when given 5" do
      5.sum_of_digits_of_factorial.should == 3
    end

    it "should compute 9 when given 6" do
      6.sum_of_digits_of_factorial.should == 9
    end

  end

  describe "sum_of_digits" do

    it "should compute 1 when given 1" do
      1.sum_of_digits.should == 1
    end

    it "should compute 3 when given 12" do
      12.sum_of_digits.should == 3
    end

    it "should compute 14 when given 86" do
      86.sum_of_digits.should == 14
    end

    it "should compute 19 when given 1945" do
      1945.sum_of_digits.should == 19
    end

  end

end
