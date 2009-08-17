require "problem006"

describe Integer do

  describe "diff_squares_sums" do
  
    it "should compute 0 when given 1" do
      1.diff_squares_sums.should == 0
    end
  
    it "should compute 4 when given 2" do
      2.diff_squares_sums.should == 4
    end
  
    it "should compute 22 when given 3" do
      3.diff_squares_sums.should == 22
    end
  
    it "should compute 170 when given 5" do
      5.diff_squares_sums.should == 170
    end
  
    it "should compute 2640 when given 10" do
      10.diff_squares_sums.should == 2640
    end
  
  end
  
  describe "sum_of_squares" do
  
    it "should compute 1 when given 1" do
      1.sum_of_squares.should == 1
    end
  
    it "should compute 5 when given 2" do
      2.sum_of_squares.should == 5
    end
  
    it "should compute 14 when given 3" do
      3.sum_of_squares.should == 14
    end
  
    it "should compute 55 when given 5" do
      5.sum_of_squares.should == 55
    end
  
  end
  
  describe "square_of_sum" do
  
    it "should compute 1 when given 1" do
      1.square_of_sum.should == 1
    end
  
    it "should compute 9 when given 2" do
      2.square_of_sum.should == 9
    end
  
    it "should compute 36 when given 3" do
      3.square_of_sum.should == 36
    end
  
    it "should compute 225 when given 5" do
      5.square_of_sum.should == 225
    end
  
  end
  
end