require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Cheeseburger do
  before(:each) do
    @cheeseburger = Cheeseburger.new
  end

  it "should be an Itarare Cheeseburger" do
    @cheeseburger.with Corn
    @cheeseburger.description.should == "Bread, Hamburger, Cheese, Corn"
    @cheeseburger.calories.should == 370
  end

  it "should be an Itarare Cheeseburger with onion rings" do
    @cheeseburger.with Corn, OnionRings
    @cheeseburger.description.should == "Bread, Hamburger, Cheese, Corn, Onion Rings"
    @cheeseburger.calories.should == 510
  end

  it "should be an Ilhéus Cheeseburger" do
    @cheeseburger.with PepperSauce
    @cheeseburger.description.should == "Bread, Hamburger, Cheese, Pepper Sauce"
    @cheeseburger.calories.should == 320
  end

  it "should be an Ilhéus Cheeseburger with onion rings and corn" do
    @cheeseburger.with PepperSauce, OnionRings, Corn
    @cheeseburger.description.should == "Bread, Hamburger, Cheese, Pepper Sauce, Onion Rings, Corn"
    @cheeseburger.calories.should == 530
  end
  
  it "should be a Cheeseburger with onion rings, corn and pepper sauce, in this order" do
    @cheeseburger.with OnionRings, Corn, PepperSauce
    @cheeseburger.description.should == "Bread, Hamburger, Cheese, Onion Rings, Corn, Pepper Sauce"
    @cheeseburger.calories.should == 530
  end
end

