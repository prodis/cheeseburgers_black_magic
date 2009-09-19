require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Cheeseburger, " when created" do
  it "should have default calories and description" do
    cheeseburger = Cheeseburger.new
    cheeseburger.calories.should == 300
    cheeseburger.description.should == "Bread, Hamburger, Cheese"
  end
end

describe Cheeseburger do
  before(:each) do
    @cheeseburger = Cheeseburger.new
  end
  
  it "should add an ingredient" do
    @cheeseburger.extend FakeIngredient1
    @cheeseburger.ingredient_method1.should == true
  end
  
  it "should add many ingredients" do
    @cheeseburger = Cheeseburger.new.with FakeIngredient1, FakeIngredient2, FakeIngredient3
    @cheeseburger.ingredient_method1.should == true
    @cheeseburger.ingredient_method2.should == true
    @cheeseburger.ingredient_method3.should == true
  end
end

module FakeIngredient1
  def ingredient_method1
    true
  end
end

module FakeIngredient2
  def ingredient_method2
    true
  end
end

module FakeIngredient3
  def ingredient_method3
    true
  end
end