#require 'test/unit'
#
#class Animal 
#  def initialize(name)
#    @name = name
#  end
#end
#
#class Vegan < Animal
#  def eat(food)
#    if food ==:vegetarian
#      puts 'yummy, root vegetables and leafy greens!'
#    else
#      puts "Sorry, I'm vegetarian"
#    end
#  end
#  
#  def zombify
#    :slaughtered #becomes a zombie when slaughtered
#  end
#end
#
#class Butcher < Animal
#  def eat(food)
#    if food !=:vegetarian
#    puts 'yummy, dead bodies!'
#    else
#    puts "Where's the meat?"
#    end
#  end
#  
#  def slaughter
#    # slaughters animals or vegans? not sure yet
#  end
#end
#
#class Food
#  attr_reader :vegetarian
#
#  def vegetarian #check if vegetarian or not 
#    :vegetarian
#  end
#end
#
#m = Butcher.new("M")
#bettina = Vegan.new("bettina")
#food = Food.new
#
#bettina.eat(food)
#m.eat(bettina)
#
#class AnimalTest < Test::Unit::TestCase
#  def test_name
#    bettina = Animal.new("Bettina")
#    assert bettina.name, 'create a new animal named Bettina'
#  end
#end
#
#class VeganTest < Test::Unit::TestCase
#  def test_name
#    bettina = Vegan.new("Bettina")
#    assert bettina.name, 'create a new Vegan named Bettina'
#  end
#  
#  def test_eat
#    bettina = Vegan.new("Bettina")
#    if food ==:vegetarian
#      assert bettina.eats, "bettina eats vegetarian food"
#    end
#  end
#  
#  def test_zombify
#    bettina = Vegan.new("Bettina")
#    if status ==:slaughtered
#      assert bettina.zombify, "Bettina becomes a zombie after being slaughtered!"
#    end
#  end
#end
#
#class ButcherTest < Test::Unit::TestCase
#  def test_name
#    m = Butcher.new("m")
#    assert m.name, 'create a new Butcher named m'
#  end
#
#  def test_eat
#    m = Butcher.new("m")
#    if food !=:vegetarian
#      assert m.eats, "m eats meat"
#    end   
#  end
#  
#  def test_slaughter
#  end
#end
#
#class FoodTest < Test::Unit::TestCase
#  def test_vegetarian
#    assert food.vegetarian, "food is vegetarian"
#  end
#end

# A vegan Animal eats a leaf
# A vegan Animal politefully refuses to eat meat and delivers a tirade about animal liberation
# A butcher happily eats that meat
# A vegan Animal becomes a zombie
# A zombie (ex-vegan?) Animal eats the butcher

# Candidates for classes:
#  
# Vegan
# Butcher
# Food
# Zombie
  
require 'test/unit'

class Animal
  def self.zombie?(persuasion)
    [:zombie].include?(persuasion)
  end
  
  def self.vegan?(persuasion)
    not [:meaty, :cheesy, :zombie].include?(persuasion)
  end
  
  attr_reader :persuasions
  
  def initialize(persuasions)
    @persuasions = persuasions
  end
  
  def eats?(persuasion)
    persuasions.include?(persuasion)
  end
  
  def vegan?
    persuasions.all?{|persuasion| self.class.vegan?(persuasion)}
  end
end



class AnimalTest < Test::Unit::TestCase
  
  def test_Animal_passed_meaty_should_not_be_a_zombie
    Animal.zombie?([:meaty])
    assert Animal, 'should not be zombie'
  end
  
  def test_Animal_passed_zombie_should_be_a_zombie
    Animal.zombie?([:zombie])
    assert Animal, 'should be a zombie!'
  end
  
  def test_creation
    animal = Animal.new ([:leafy, :nutty])
    assert animal, 'creating instance of animal'
  end
  
  def test_an_animal_which_was_passed_leafy_should_eat_leafy
    animal = Animal.new([:leafy])
    assert animal.eats?(:leafy), 'should be leafy'
  end
  
  def test_an_Animal_which_was_passed_leafy_should_not_eat_meaty
    animal = Animal.new ([:leafy])
    assert !animal.eats?(:meaty), 'should not be meaty'
  end
  
  def test_an_Animal_which_was_passed_leafy_should_be_vegan
    animal = Animal.new([:leafy])
    assert animal.vegan?, 'should be a vegan'
  end
  
  def test_an_Animal_which_was_passed_zombie_should_not_be_a_vegan
    animal = Animal.new([:zombie])
    assert !animal.vegan?, 'should not be a vegan'
  end
end