=begin
  Given the following class:
  Write a class called Square that inherits from Rectangle, and is used on lines 18 and 19
=end


class Rectangle
  def initialize(height, width)
    @height = height
    @width = width
  end

  def area
    @height * @width
  end
end

class Square < Rectangle
  def initialize(side)
    super(side, side)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"

# The key thing to note for this problem is that we must call super in Square#initialize, and that Square inherits the area method from Rectangle.
