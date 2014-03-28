require_relative "problem002"

describe Integer, "and even Fibonacci summation" do

  it "should sum up to 0" do
    0.fib_sum.should == 0
  end

  it "should sum up to 1" do
    1.fib_sum.should == 0
  end

  it "should sum up to 2" do
    2.fib_sum.should == 2
  end

  it "should sum up to 33" do
    33.fib_sum.should == 10
  end

  it "should sum up to 34" do
    34.fib_sum.should == 44
  end

  it "should sum up to 35" do
    35.fib_sum.should == 44
  end
end

describe Integer, "and Fibonacci list" do
  it "should list up to 0" do
  	0.fibs_upto.should == []
  end

  it "should list up to 1" do
  	1.fibs_upto.should == [1]
  end

  it "should list up to 2" do
  	2.fibs_upto.should == [2, 1]
  end

  it "should list up to 33" do
  	33.fibs_upto.should == [21, 13, 8, 5, 3, 2, 1]
  end

  it "should list up to 34" do
  	34.fibs_upto.should == [34, 21, 13, 8, 5, 3, 2, 1]
  end

end
