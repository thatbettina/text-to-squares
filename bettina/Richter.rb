#-it takes any given string of 250 char max
#-it strips all characters that are not A-Za-z
#-it downcases each character
#-it assigns a colour to every character in a-z
#-it converts each instance of any character to a square that has the assigned color
#-it outputs a picture of 50 x 50 squares

# Candidates for classes:
# Character is a string
# Color is a string as Hexcode
# String is a string
# Square
# Picture
# Application

# first goal : command line app that takes a string and outputs a list of N color string per line
#e.g.
#
#$ ruby Richter.rb --file my_poem.txt
#Please enter your secret:
#aaaaaa bbbbbb cccccc
#etc.

#Application
#  + normalizes the string (strip off characters, downcase) before creating squares
#  - creates a picture instance with that string
#  - instantiates a picture by getting all the squares and prints out their colors line by line
#
#The Picture class
#  - takes the string as well as a number of row and columns as arguments of the initialize method
#  + knows all the available colors
#  - it generates squares from the color string
#  - calculates how many squares are on a row and how many rows there are so that it's as square as possible
#  
#The Square class
# + has a color
# + has a fixed size

require 'test/unit'

class Square

attr_reader :size

  def initialize(string)
    @string = string
  end
end

class Picture
  def initialize(string)
    @string = string
    @stringlength = string.length 
  end

  def size
    Math.sqrt(@stringlength).to_i
  end
  
# make secret into array so that each letter will be an object
  def secret_array
    secret = secret.chars.to_a
  end

# loop over all the characters in the string and create a new array with the colors
  def array_of_colors
      secret.map do |letter|
        hash#{letter}","
      end
    end
  end

class Application
  def self.colors
    @colors = Hash["a" => "000000", "b" => "F8F8F8", "c" => "101010", "d" => "E8E8E8", "e" => "202020", "f" => "D8D8D8", "g" => "303030", "h" => "383838", "i" => "404040", "j" => "484848", "k" => "505050", "l" => "585858", "m" => "606060", "n" => "686868", "o" => "707070", "p" => "787878", "q" => "808080", "r" => "888888", "s" => "909090", "t" => "989898", "u" => "A0A0A0", "v" => "A8A8A8", "x" => "B0B0B0", "y" => "B8B8B8", "z" => "C0C0C0" ]
  end
  
  def initialize(string)
    @string = string
  end
  
  def run
    puts "Tell me your secret..."
    string = gets.chomp.gsub(/[^a-zA-Z]/, '').downcase!
  end
  
  def square
    Square.new(@string)
  end
  
  def picture
    Picture.new(@string)
  end
  
  def show(squares)
    #puts colors in rows and columns
  end
end

class ApplicationTest < Test::Unit::TestCase
  def test_colors_returns_a_hash
    color = Application.colors
    assert color.class == Hash, "color should contain hash"
  end

  def test_colors_returns_a_hash_containing_a_value_for_a
    color = Application.colors['a']
    assert_equal color, "000000", "a should return 000000"
  end

  def test_creation
    app = Application.new('something')
    assert app, "App is an instance of Application"
  end

  def test_picture_returns_a_picture
    app = Application.new('something')
    instance_of_picture = Picture.new
    assert instance_of_picture.instance_of?(Picture), 'should return an instance of picture'
  end

  def test_squares_returns_an_array_of_squares
    app = Application.new('something')
    assert app.square.instance_of?(Square), 'should return an array of squares'
    # assert that application.squares returns an array where the first object is an instance of Square
    # hint: you will need to implement the Picture and Square classes first
  end
end

class PictureTest < Test::Unit::TestCase
  def test_creation
    picture = Picture.new('something')
    assert picture, "a new instance of Picture is created"
    # assert that picture is an instance of Picture
  end

  def test_normalized_string_strips_special_chars
    picture = Picture.new('something!')
    assert app.picture.normalise == 'something', 'returns a string with the ! stripped'
    # assert that picture.normalized_string returns a string with "!" stripped off
  end

  def test_normalized_string_downcases
    picture = Picture.new('SOMETHING')
    # assert that picture.normalized_string returns a string with "!" stripped off
  end

  def test_characters_returns_an_array_of_characters_from_the_normalized_string
    picture = Picture.new('something')
    # assert that picture.characters returns an array of all characters contained in "something"
  end

  def test_squares_returns_an_array_of_squares_from_the_characters
    picture = Picture.new('something')
    # assert that picture.squares returns an an array of Square instances where the first one
    # has the letter "s"
    # hint: you will need to implement the Square class first
  end
end

class SquareTest < Test::Unit::TestCase
  def test_creation
    square = Square.new('a')
    # assert that square is an instance of Square
  end

  def test_color_returns_the_color_assigned_to_the_character
    square = Square.new('a')
    # assert that square.color returns the color which is assigned to "a"
  end
end
