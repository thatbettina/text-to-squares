require 'test/unit'

class Square
  def initialize(char)
    @char = char
  end
  
  def color
    Application.colors[@char]
  end
end

class Picture

attr_reader :string

  def initialize(string, rows, columns)
    @string = string
    @rows = rows
    @columns = columns
  end

  def normalized_string
    @string.gsub(/[^a-zA-Z]/, "").downcase
  end
  
  def characters
    normalized_string.split(//)
  end

# for each character in normalized string, creates a new square 
  def squares
    characters.map { |char| Square.new(char)}
  end

end

class Application
  def self.colors
    {"a" => "000000", "b" => "F8F8F8", "c" => "101010", "d" => "E8E8E8", "e" => "202020", "f" => "D8D8D8", "g" => "303030", "h" => "383838", "i" => "404040", "j" => "484848", "k" => "505050", "l" => "585858", "m" => "606060", "n" => "686868", "o" => "707070", "p" => "787878", "q" => "808080", "r" => "888888", "s" => "909090", "t" => "989898", "u" => "A0A0A0", "v" => "A8A8A8", "x" => "B0B0B0", "y" => "B8B8B8", "z" => "C0C0C0" }
  end
  
  def initialize(string)
    @string = string
  end
  
  def squares
    picture.squares
    #[Square.new(@string)]
  end
  
  def picture
    Picture.new("string", "rows", "columns")
  end

end

require 'test/unit'

class ApplicationTest < Test::Unit::TestCase
  def setup
    @app = Application.new('something')
  end

  def test_colors_returns_a_hash
    color = Application.colors
    assert color.instance_of?(Hash), 'that colors should be a Hash' #color.class == Hash
  end

  def test_colors_returns_a_hash_containing_a_value_for_a
    color = Application.colors['a']
    assert_equal color, "000000", 'when key = a value = 000000'
    # assert that color is the color which is assigned to "a"
  end

  def test_creation
    assert @app.instance_of?(Application), 'instance of Application'
    # assert that application is an instance of Application
  end

  def test_picture_returns_a_picture
    assert @app.picture.instance_of?(Picture), 'method picture returns instance of Picture'
    # assert that the method picture returns an instance of Picture
  end

  def test_squares_returns_an_array_of_squares
    assert @app.squares.instance_of?(Array), 'is Array'
    assert @app.squares.first.instance_of?(Square), 'first one is instance of Squares'
    # assert that application.squares returns an array where the first object is an instance of Square
    # hint: you will need to implement the Picture and Square classes first
  end

  def test_if_picture_instance_has_the_string
    assert_equal @app.picture.string, "string" 
  end

   def test_squares_returns_an_array_of_squares_containing_the_expected_colors
    app = Application.new('abc')
    actual_colors = app.squares.map { |square| square.color }
    expected_colors = %w(a b c).map { |char| Application.colors[char] }
    assert_equal expected_colors, actual_colors
  end
end

class PictureTest < Test::Unit::TestCase
  def setup
    @picture = Picture.new('something','rows', 'columns')
  end
  
  def test_creation
    # picture = Picture.new('something')
    assert @picture.instance_of?(Picture)
    # assert that picture is an instance of Picture
  end

  def test_normalized_string_strips_special_chars
    picture = Picture.new('something!','rows', 'columns')
    assert_equal picture.normalized_string, "something"
    # assert_no_match /[^a-zA-Z]/, picture.normalized_string
    # assert that picture.normalized_string returns a string with "!" stripped off
  end

  def test_normalized_string_downcases
    picture = Picture.new('SOMETHING','rows', 'columns')
    assert_equal picture.normalized_string, "something"
    # assert that picture.normalized_string returns a string with "!" stripped off
  end

  def test_characters_returns_an_array_of_characters_from_the_normalized_string
    # picture = Picture.new('something')
    # assert_equal %w(s o m e t h i n g), @picture.characters 
    assert @picture.characters.instance_of?(Array)
    # assert that picture.characters returns an array of all characters contained in "something"
  end

  def test_squares_returns_an_array_of_squares_from_the_characters
    #picture = Picture.new('something')
    # assert that picture.squares returns an an array of Square instances where the first one
    # has the letter "s"
    #assert_equal @picture.squares.first, "s"
    assert @picture.squares.instance_of?(Array), "instance of array"
    assert @picture.squares.first.instance_of?(Square), "first one is instance of class square"
    # hint: you will need to implement the Square class first
  end
end

class SquareTest < Test::Unit::TestCase
  def test_creation
    square = Square.new('a')
    assert square.instance_of?(Square)
    # assert that square is an instance of Square
  end

  def test_color_returns_the_color_assigned_to_the_character
    square = Square.new('a')
    assert_equal square.color, "000000"
    # assert that square.color returns the color which is assigned to "a"
  end
end