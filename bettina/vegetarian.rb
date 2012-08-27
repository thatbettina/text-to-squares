require 'test/unit'

class Animal
  
  def initialize(name)
    @name = name
  end
  
end

class Vegan < Animal
  def eat(food)
    if food ==:vegetarian
      puts 'yummy!'
    else
      puts "Sorry, I'm vegetarian"
    end
  end
  
  def zombify
    :slaughtered #becomes a zombie when slaughtered
  end
end

class Butcher < Animal
  def eat(food)
    if food !=:vegetarian
    puts 'yummy!'
    else
    puts "Where's the meat?"
    end
  end
  
  def slaughter
    # slaughters animals or vegans? not sure yet
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
food = Food.new

bettina.eat(food)
m.eat(bettina)

class AnimalTest < Test::Unit::TestCase
  def test_name
    bettina = Animal.new("Bettina")
    assert bettina.name, 'create a new animal named Bettina'
  end
end

class VeganTest < Test::Unit::TestCase
  def test_name
    bettina = Vegan.new("Bettina")
    assert bettina.name, 'create a new Vegan named Bettina'
  end
  
  def test_eat
    bettina = Vegan.new("Bettina")
    if food ==:vegetarian
      assert bettina.eats, "bettina eats vegetarian food"
    end
  end
  
  def test_zombify
    bettina = Vegan.new("Bettina")
    if status ==:slaughtered
      assert bettina.zombify, "Bettina becomes a zombie after being slaughtered!"
    end
  end
end

class ButcherTest < Test::Unit::TestCase
  def test_name
    m = Butcher.new("m")
    assert m.name, 'create a new Butcher named m'
  end

  def test_eat
    m = Butcher.new("m")
    if food !=:vegetarian
      assert m.eats, "m eats meat"
    end   
  end
  
  def test_slaughter
  end
end

class FoodTest < Test::Unit::TestCase
  def test_vegetarian
    assert food.vegetarian, "food is vegetarian"
  end
end
