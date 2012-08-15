class Vegan
  def initialize(name)
    @name = name
  end
  
  def eat(food_sample)
    if food_sample == vegetarian?
      puts 'yummy!'
    else
      puts "Sorry, I'm vegetarian"
    end
  end
end

class Food
  def initialize(name, vegetarian)
    @name  = name
    @vegetarian = vegetarian
  end

  def names
    @names
  end  

  def vegetarian?
    @vegetarian
  end

end

bettina = Vegan.new('bettina')
food_sample = Food.new('tempeh', true)

bettina.eat(food_sample)