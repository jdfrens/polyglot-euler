require "problem003"

describe Integer do
  it "should have a greatest prime factor of 2" do
    2.greatest_prime_factor.should == 2
  end

  it "should have a greatest prime factor of 4" do
    4.greatest_prime_factor.should == 2
  end

  it "should have a greatest prime factor of 6" do
    6.greatest_prime_factor.should == 3
  end

  it "should have a greatest prime factor of 13195" do
    13195.greatest_prime_factor.should == 29
  end
end