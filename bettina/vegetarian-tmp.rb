class Food  
  
  def initialize(name, vegetarian)
    @name  = name
    @vegetarian = vegetarian
  end

  def name
      @name 
  end
  
  def vegetarian?
    @vegetarian
  end

end

new_food = Food.new('tempeh', true)