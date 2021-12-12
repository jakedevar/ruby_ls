=begin
==========================
         Problem
--------------------------
Write a program that will take a string of digits and return all the possible consecutive number series of a specified length in that string.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: stop iterating when the last element is accounted for 
  - throw error when the num is larger than the array 
  - init with a string
  - the slices method is then passed an integer 
-  Inputs: a string of numbers 
-  Output: an array with nested arrays of each cons 
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

deal with one that is bigger than everything 
also deal with one that is designed to blow up on you with a length arguemnt 

--------------------------
     Data Structure
--------------------------
take a string
think about breaking string up into bits with chars 
also think about turning all of the strings into integers 

--------------------------
       Algorithm
--------------------------
1. break the str up into chars and iterate with the arg. 
2. make sure to put all that into an array,
3. before putting into the array make sure to map them into integers 

ok hard version now 

1. break string to chars
2. iterate through the chars and call slice 
3. make slice integers 
4. append to array 

--------------------------
          Notes
--------------------------

=end

# class Series
#   attr_reader :str 

#   def initialize str 
#     @str = str 
#   end

#   def slices n 
#     raise ArgumentError if n > str.size 
#     res = []
#     str.chars.each_cons(n) do |sub_arr|
#       res << sub_arr.map(&:to_i)
#     end
#     res
#   end
# end

# class Series
#   attr_accessor :str 

#   def initialize str 
#     @str = str 
#   end

#   def slices n 
#     raise ArgumentError if n > str.size 
#     res = []
#     self.str = str.chars 
#     str.each_index do |ele, ind|
#       return res if str[(ind + n)] == nil 
#       res << str[ind, (ind + n)]
#     end
#     res
#   end
# end