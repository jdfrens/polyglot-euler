require_relative "problem001"

describe Integer do
  it "should sum multiples of 3 and 5 up to 0" do
    0.sum35.should == 0
  end
  it "should sum multiples of 3 and 5 up to 3" do
    3.sum35.should == 3
  end
  it "should sum multiples of 3 and 5 up to 5" do
    5.sum35.should == 8
  end
  it "should sum multiples of 3 and 5 up to 9" do
    9.sum35.should == 23
  end
end
