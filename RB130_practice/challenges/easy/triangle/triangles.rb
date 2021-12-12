=begin
==========================
         Problem
--------------------------
Write a program to determine whether a triangle is equilateral, isosceles, or scalene.

An equilateral triangle has all three sides the same length.

An isosceles triangle has exactly two sides of the same length.

A scalene triangle has all sides of different lengths.


Note: For a shape to be a triangle at all, all sides must be of length > 0, and the sum of the lengths of any two sides must be greater than the length of the third side.

--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - it must be tested by the test file, it must be a kind method that returns a string
  - for it to even be a triangle the length of the two smaller sides must be greater than the third side 
-  Inputs: a triangle determined by the triangle new with three args that equal a triangle
-  Output: a string that represents a triangle
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
- if a side is negative it is invalid
- if a side is zero it is invalid
- see problem for last 
--------------------------
Examples/Test Cases/Edge's
--------------------------

all zeros
one zero
one invaide triangle 

--------------------------
     Data Structure
--------------------------
given a set of integers that represent sides 
--------------------------
       Algorithm
--------------------------
1. create class and method with initialize adn sort on instantiation 
2. make a kind method that asseses triangles
  - evaluate with methods that are pertinant to that with bools 
3. return the string that is the triangle

1. create a method that raises an error if not good triangle 

--------------------------
          Notes
--------------------------

=end

# class Triangle
#   attr_reader :sides 

#   def initialize one, two, three 
#     @sides = [one, two, three].sort
#     raise ArgumentError if bad_side?
#   end

#   def kind
#     case 
#     when equilateral? then 'equilateral'
#     when isosceles? then 'isosceles'
#     when scalene? then 'scalene'
#     end
#   end

#   def equilateral?
#     sides.all?(sides[0])
#   end

#   def isosceles?
#     sides[0] == sides[1] || sides[1] == sides[2]
#   end

#   def scalene?
#     sides[0] != sides[1] && sides[1] != sides[2]
#   end

#   def bad_side?
#     sides.any? {|n| n <= 0} || sides[0] + sides[1] <= sides[2]
#   end
# end

class Triangle
  attr_reader :sides 

  def initialize one, two, three 
    @sides = [one, two, three].sort
    raise ArgumentError if bad_side?
  end

  def kind  
    if sides.uniq.size == 1 
      'equilateral'
    elsif sides.uniq.size == 2 
      'isosceles'
    else                      
      'scalene'
    end
  end

  # def equilateral?
  #   sides.all?(sides[0])
  # end

  # def isosceles?
  #   sides[0] == sides[1] || sides[1] == sides[2]
  # end

  # def scalene?
  #   sides[0] != sides[1] && sides[1] != sides[2]
  # end

  def bad_side?
    sides.any? {|n| n <= 0} || sides[0] + sides[1] <= sides[2]
  end
end