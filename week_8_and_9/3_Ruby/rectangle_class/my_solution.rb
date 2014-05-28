# U3.W8-9: Implement a Rectangle Class


# I worked on this challenge by myself.

# 2. Pseudocode

# Create rectangle#area method that calculates area of rectangle class
	# Should return width * height
# Create rectangle#perimeter method that calculates perimeter of rectangle class
	# Should return width*2+height*2
# Create rectangle#diagonal method that calculates diagonal of rectangle class
	# Uses pythagorean theorem, should return sqrt(width^2 + height^2)
# Create rectangle#square? class
	# Returns true if width = height, false if otherwise


# 3. Initial Solution

class Rectangle
  attr_accessor :width, :height

  def initialize(width, height)
    @width  = width
    @height = height
  end

  def ==(other)
    (other.width  == self.width && other.height == self.height ) ||
    (other.height == self.width && other.width  == self.height )
  end

  def area
  	return @width * @height
  end

  def perimeter
  	return ((@width*2)+(@height*2))
  end

  def diagonal
  	return Math.sqrt((@width*@width)+(@height*@height))
  end

  def square?
  	return true if @width == @height
  	return false
  end

end



# 4. Refactored Solution

# Nothing to refactor?




# 1. DRIVER TESTS GO BELOW THIS LINE

myRectangle = Rectangle.new(3,4);
p myRectangle.area == 12
p myRectangle.perimeter == 14
p myRectangle.diagonal == 5
p myRectangle.square? == false

mySquare = Rectangle.new(4,4)
p mySquare.area == 16
p mySquare.perimeter == 16
p mySquare.diagonal == Math.sqrt(32)
p mySquare.square? == true

# 5. Reflection 

# Simple challenge but I had to look up creating instance methods within a class, which I was surprised
# I didn't remember instantly how to do.  However, I didn't have any troubles with it.