require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

class FakeSandwich
  def description
    "Sandwich description"
  end
  
  def calories
    0
  end
end

describe Corn do
  before(:all) do
    @fake_sandwich = FakeSandwich.new
    @fake_sandwich.extend Corn
  end  

  it "should add corn description to sandwich description" do
    @fake_sandwich.description.should == "Sandwich description, Corn"
  end

  it "should add corn calories to sandwich calories" do
    @fake_sandwich.calories.should == 70
  end
end

describe PepperSauce do
  before(:all) do
    @fake_sandwich = FakeSandwich.new
    @fake_sandwich.extend PepperSauce  
  end

  it "should add pepper sauce description to sandwich description" do
    @fake_sandwich.description.should == "Sandwich description, Pepper Sauce"
  end

  it "should add pepper sauce calories to sandwich calories" do
    @fake_sandwich.calories.should == 20
  end
end

describe OnionRings do
  before(:all) do
    @fake_sandwich = FakeSandwich.new
    @fake_sandwich.extend OnionRings
  end

  it "should add onion rings description to sandwich description" do
    @fake_sandwich.description.should == "Sandwich description, Onion Rings"
  end

  it "should add onion rings calories to sandwich calories" do
    @fake_sandwich.calories.should == 140
  end
end
