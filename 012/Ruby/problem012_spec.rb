require "problem012"

describe Integer do

  describe "problem012" do
  
    it "should compute 1 when given 1" do
      1.problem012.should == 1
    end
  
    it "should compute 3 when given 2" do
      2.problem012.should == 3
    end
  
    it "should compute 6 when given 3" do
      3.problem012.should == 6
    end
  
    it "should compute 6 when given 4" do
      4.problem012.should == 6
    end
  
    it "should compute 28 when given 5" do
      5.problem012.should == 28
    end
  
    it "should compute 28 when given 6" do
      6.problem012.should == 28
    end
  
  end
  
end