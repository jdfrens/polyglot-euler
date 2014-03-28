require_relative "problem009"

describe Integer do

  describe "pythagorean_triplet" do

    it "should compute 60 when given 12" do
      12.pythagorean_triplet.should == 60
    end

    it "should compute 480 when given 24" do
      24.pythagorean_triplet.should == 480
    end

    it "should compute 453960 when given 234" do
      234.pythagorean_triplet.should == 453960
    end

  end

end
