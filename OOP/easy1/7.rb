# Write a class called Square that inherits from Rectangle, and is used like this:
# class Rectangle
#   def initialize(height, width)
#     @height = height
#     @width = width
#   end

#   def area
#     @height * @width
#   end
# end

# class Square < Rectangle
#   def initialize(int)
#     @height = int
#     @width = int
#   end
# end

# LS solution
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
  def initialize(int)
    super(int, int)
  end
end

square = Square.new(5)
puts "area of square = #{square.area}"