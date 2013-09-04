require "spec_helper"
require_relative "../primecalc"

describe "A primes calculation" do
  it "doesn't validate 1 for max input" do  
    primeCalc = new PrimeCalc
    primeCalc.validatePrimeInput(1).should == false
  end
end