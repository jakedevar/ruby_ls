=begin
==========================
         Problem
--------------------------
Write a program to determine whether a triangle is equilateral, isosceles, or scalene.

An equilateral triangle has all three sides the same length.

An isosceles triangle has exactly two sides of the same length.

A scalene triangle has all sides of different lengths.

Note: For a shape to be a triangle at all, all sides must be of length > 0, 
and the sum of the lengths of any two sides must be greater than the length of the third side.
--------------------------
**Explicit Requirements**
--------------------------

To be a valid triangle, each side length must be greater than 0.
To be a valid triangle, the sum of the lengths of any two sides
  must be greater than the length of the remaining side.
An equilateral triangle has three sides of equal length.
An isosceles triangle has exactly two sides of the equal length.
A scalene triangle has three sides of unequal length (no two sides have equal length).

--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------

The provided test cases indicate that we need a Triangle class. We see that the class must have the following two methods:

a constructor that accepts three arguments representing three side lengths.
an exception is raised in the constructor if any side length is <= 0.
an exception is raised if the side lengths taken together don't describe a valid triangle

a method kind that returns a string representing the type of the triangle.

We may also want to create some helper methods to assist us, but those are optional.

--------------------------
     Data Structure
--------------------------


We can see from the provided test cases that we are going to be using numbers 
to create a new triangle and to determine its validity and type. 
The return value is a string.

What we need to think about how we might store a triangle's side lengths. 
It might be convenient to collect the three side-lengths into an array.

--------------------------
       Algorithm
--------------------------

    Save the three side lengths
    Check whether any side length is less than or equal to zero. If so, raise an exception.
    Use comparisons to determine whether the sum of any two side lengths is less than or equal to the length of the third side. If so, raise an exception.

Method: kind

    Compare the values representing the three side lengths
    If all three side lengths are equal return 'equilateral'.
    If the triangle is not equilateral, but any two side lengths are equal to one another, return 'isosceles'.
    If none of the side lengths are equal to one another, return 'scalene'.


--------------------------
         Notes
--------------------------

1. throw a raise method into the initalize to check if any args are 0 or less or the sides dont mathc
2. then case statements using uniq!

=end

class Triangle 
  attr_reader :triangle

  def initialize one, two, three 
    @triangle = [one, two, three]
    raise ArgumentError if not_valid?(triangle)
  end

  def not_valid? arr
    sorted = arr.sort  
    return true if arr.any? {|x| x <= 0}
    sorted[0] + sorted[1] <= sorted.max 
  end

  def kind 
    case triangle.uniq.size 
    when 1 then 'equilateral'
    when 2 then 'isosceles'
    when 3 then 'scalene'
    end
  end
end