require 'spec_helper'

describe ParseJson do

  before(:each) do
    @file = ParseJson.new('json_example.json')
  end



  it "should contain the base as EUR" do
    expect(@file.base).to eql("EUR")
  end

  it "Should have a date string" do
    expect(@file.date).to eql(true)
  end


  it "should contain 31 rates" do
    expect(@file.rates).to eql(31)
  end

  it "should all rates should be Floats" do
    expect(@file.floats).to eql(true)
  end

end