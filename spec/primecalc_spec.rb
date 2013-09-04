require "spec_helper"
require_relative "../primecalc"

# To compare our results with Ruby implementation of Prime
require "prime"

describe "A primes calculation" do
  before :each do
    @primeCalc = PrimeCalc.new
  end
  
  it "doesn't approve string for max input" do  
    @primeCalc.validatePrimeInput('aaa').should be_false
  end
  
  it "doesn't approve fixnum less than 3 for max input" do  
    @primeCalc.validatePrimeInput(2).should be_false
  end
  
  it "calculates all primes for the given max value" do
    ourArray = @primeCalc.calculatePrimesUpTo(100)
    
    # Calculating primes with Ruby built-in class
    # for comparison
    rubyPrimeArray = Prime.take(ourArray.length)
    ourArray.should == rubyPrimeArray
  end
  
  it "prints multiplication array" do
    ourArray = @primeCalc.calculatePrimesUpTo(100)
    @primeCalc.printMultiplicationTable(ourArray).should_not raise_error()
  end
  
  it "properly aligns tabular value" do
    @primeCalc.alignTabularValue('2').should == '2    '
  end
end