require "problem005"

describe Integer do

  it "should have smallest multiples" do
    1.smallest_multiple.should == 1
    2.smallest_multiple.should == 2
    3.smallest_multiple.should == 6
    4.smallest_multiple.should == 12
    5.smallest_multiple.should == 60
    6.smallest_multiple.should == 60
    10.smallest_multiple.should == 2520
  end

end