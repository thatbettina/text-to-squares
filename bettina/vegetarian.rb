class Animal
  def initialize(name)
    @name = name
  end
  
  def eat(food)
  end
  
end

class Vegan < Animal
  def eat(food)
    if food == :vegetarian
      puts 'yummy!'
    else
      puts "Sorry, I'm vegetarian"
    end
  end
  
  def zombify
    #becomes a zombie when slaughtered
  end
end

class Butcher < Animal
  def eat(food)
    if food !== :vegetarian
    puts 'yummy!'
    else
    puts "Where's the meat?"
    end
  end
  
  def slaughter
    #slaughters animals or vegans? not sure yet
  end
end

class Food
  attr_reader :vegetarian

  def vegetarian #check if vegetarian or not 
    :vegetarian
  end

end

m = Butcher.new("M")
bettina = Vegan.new("bettina")
food = 

bettina.eat(food)
m.eat(bettina)

class VeganTest < Test::Unit::TestCase
  def test_name
    bettina = Vegan.new("Bettina")
    assert bettina.name, 'create a new Vegan named Bettina'
  end
  
  def test_eat
    bettina = Vegan.new("Bettina")
    if food == :vegetarian
      assert bettina.eats, "bettina etas vegetarian food"
    end
  end
end

class ButcherTest < Test::Unit::TestCase
  def test_vegetarian
    
  end
end
