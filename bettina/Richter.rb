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
#  - normalizes the string (strip off characters, downcase) before creating squares
#  - creates a picture instance with that string
#instantiates a picture by getting all the squares and prints out their colors line by line
#
#The Picture class
#  - takes the string as well as a number of row and columns as arguments of the initialize method
#  - knows all the available colors
#  - it generates squares from the color string
#  - calculates how many squares are on a row and how many rows there are so that it's as square as possible
#  
#The Square class
#- has a color
#  - has a fixed size

class Square
  def initialize(color, size)
end

class Picture
  
end

class Application
  puts "Tell me your secret..."
  secret = gets.chomp.delete("^a-zA-Z").downcase!
  puts secret
  end
end
