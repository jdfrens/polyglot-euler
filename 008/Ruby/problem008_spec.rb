require "problem008"

describe Integer do

  describe "largest_five_digit_product" do
  
    it "should compute 0 when given 1234" do
      1234.largest_five_digit_product.should == 0
    end
  
    it "should compute 1890 when given 23579" do
      23579.largest_five_digit_product.should == 1890
    end
  
    it "should compute 1890 when given 123579" do
      123579.largest_five_digit_product.should == 1890
    end
  
    it "should compute 1890 when given 235791" do
      235791.largest_five_digit_product.should == 1890
    end
  
    it "should compute 3125 when given 223355555337" do
      223355555337.largest_five_digit_product.should == 3125
    end
  
    it "should compute 1890 when given 123223957112110" do
      123223957112110.largest_five_digit_product.should == 1890
    end
  
    it "should compute 32 when given 1111222221111113" do
      1111222221111113.largest_five_digit_product.should == 32
    end
  
  end
  
end