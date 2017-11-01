require 'spec_helper'

describe "XML menu" do

  before(:all) do
    #@xml_menu = Nokogiri::XML(File.read('xml_menu.xml'))
    @xml_menu = XMLMenu.new('xml_menu.xml')
  end

  it "no price should be more than £10" do
  	expect(@xml_menu.price).to be <= 10
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
  	expect(@xml_menu.calories).to be true
  end

  it "should have all waffle dishes stating you get two waffles" do
  	expect(@xml_menu.waffles).to be true
  end


end