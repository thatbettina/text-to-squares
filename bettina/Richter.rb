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

  def initialize(color)
  end
end

class Picture
  def initialize (string, row, columns)
  end

  def color
    {"a" => "000000", "b" => "F8F8F8", "c" => "101010", "d" => "E8E8E8", "e" => "202020", "f" => "D8D8D8", "g" => "303030", "h" => "383838", "i" => "404040", "j" => "484848", "k" => "505050", "l" => "585858", "m" => "606060", "n" => "686868", "o" => "707070", "p" => "787878", "q" => "808080", "r" => "888888", "s" => "909090", "t" => "989898", "u" => "A0A0A0", "v" => "A8A8A8", "x" => "B0B0B0", "y" => "B8B8B8", "z" => "C0C0C0" }
  end
  
  # generates the squares from the strings like this below?
  # colors.each do |key, value|
  #  puts key, " is ", value
end

class Application
  def run
    puts "Tell me your secret..."
    secret = gets.chomp.gsub(/[^a-zA-Z]/, '').downcase!
  end
  
  def show(squares)
    #puts colors in rows and columns
  end
end

#assume that Global can create a new instance of Picture

class PictureTest < Test::Unit::TestCase
  def test_picture_creation
    string = helloworld
    picture = Picture.new(string, 2, 5)
    assert picture, 'creating instance of picture'
  end

  def test_picture_when_passed_2_rows_should_have_two_rows
    picture = Picture.new(helloworld, 2, 5)
    #assert
  end

  def test_picture_when_passed_2_rows_should_not_have_3_rows
     picture = Picture.new(helloworld, 2, 5)
    #assert
  end

  def test_picture_number_of_columns
    picture = Picture.new(helloworld, 2, 5)
    #assert
  end
end

#assume that Global can create a new instance of Square
class SquareTest < Test::Unit::TestCase
  def test_square_creation
    square = Square.new(000000)
    assert Square, 'creating instance of square'
  end

  def test_square_passed_000000_should_be_this_color
    square = Square.new(000000)
    #assert Square, 'square has color 000000'
  end

  def test_square_passed_000000_should_not_be_F8F8F8
    square = Square.new(000000)
    #assert Square, 'square is not color f8f8f8'
  end
end

#assume that I can create a new instance of Application
class ApplicationTest < Test::Unit::TestCase
  def test_creation
    app = Application.new 
    assert Application, 'creating instance of app'
  end
end  
  
#assume that Global can run Application
#assume that Application can show squares

