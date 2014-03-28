require_relative "problem014"

describe Integer do

  describe "collatz" do

    it "should compute 1 when given 1" do
      1.collatz.should == 1
    end

    it "should compute 2 when given 2" do
      2.collatz.should == 2
    end

    it "should compute 8 when given 3" do
      3.collatz.should == 8
    end

    it "should compute 17 when given 7" do
      7.collatz.should == 17
    end

    it "should compute 4 when given 8" do
      8.collatz.should == 4
    end

    it "should compute 20 when given 9" do
      9.collatz.should == 20
    end

    it "should compute 7 when given 10" do
      10.collatz.should == 7
    end

  end

  describe "maximum_collatz_under" do

    it "should compute 1 when given 1" do
      1.maximum_collatz_under.should == 1
    end

    it "should compute 2 when given 2" do
      2.maximum_collatz_under.should == 2
    end

    it "should compute 3 when given 3" do
      3.maximum_collatz_under.should == 3
    end

    it "should compute 3 when given 4" do
      4.maximum_collatz_under.should == 3
    end

    it "should compute 7 when given 7" do
      7.maximum_collatz_under.should == 7
    end

    it "should compute 7 when given 8" do
      8.maximum_collatz_under.should == 7
    end

    it "should compute 9 when given 9" do
      9.maximum_collatz_under.should == 9
    end

    it "should compute 9 when given 10" do
      10.maximum_collatz_under.should == 9
    end

  end

end
