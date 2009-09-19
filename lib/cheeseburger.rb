class Cheeseburger
  attr_reader :description, :calories

  def initialize
    @description = "Bread, Hamburger, Cheese"
    @calories = 300
  end
  
  def with(*ingredients)
    self.extend *ingredients.reverse
  end
end