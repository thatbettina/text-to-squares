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

class Square
  def initialize(color, size)
    
end

class Picture
  def initialize (string, row, columns)
  end

  colors = {"a" => "000000", "b" => "F8F8F8", "c" => "101010", "d" => "E8E8E8", "e" => "202020", "f" => "D8D8D8", "g" => "303030", "h" => "383838", "i" => "404040", "j" => "484848", "k" => "505050", "l" => "585858", "m" => "606060", "n" => "686868", "o" => "707070", "p" => "787878", "q" => "808080", "r" => "888888", "s" => "909090", "t" => "989898", "u" => "A0A0A0", "v" => "A8A8A8", "x" => "B0B0B0", "y" => "B8B8B8", "z" => "C0C0C0" }
  colors.each do |key, value|
    puts key, " is ", value
  end
  
  # generates the squares from the strings like this below?
  #secret.each do |key, value|
  #  puts value
  #end
end

class Application
  puts "Tell me your secret..."
  secret = gets.chomp.delete("^a-zA-Z").downcase!
  puts secret
  end
#create picture instance with secret
#gets squares from picture and prints out colors in rows and columns
end
