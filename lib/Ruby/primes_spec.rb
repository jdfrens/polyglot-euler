require 'primes'
require 'spec'

describe "generating primes" do
  it "should generate primes" do
    Integer.primes(:less_than => 2).should == [2]
    Integer.primes(:less_than => 3).should == [2, 3]
    Integer.primes(:less_than => 9).should == [2, 3, 5, 7]
    Integer.primes(:less_than => 30).should == 
      [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
  end
end