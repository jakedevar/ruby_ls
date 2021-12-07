
=begin
==========================
         Problem
--------------------------
# Write a method called one? that behaves similarly for Arrays. It should take an Array as an argument, and a block.

# It should return true if the block returns true for exactly one of the element values. Otherwise, it should return false.

# Your method should stop processing elements of the Array as soon as the block returns true a second time.

# If the Array is empty, one? should return false, regardless of how the block is defined.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: returns true if returns true just once, returns false if no true or true twice 
-  Inputs:
-  Output:
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

-  Visual Reference:

--------------------------
     Data Structure
--------------------------

--------------------------
       Algorithm
--------------------------
1. make a counter
2. iterate through and if true returns then increment counter


--------------------------
          Notes
--------------------------

=end

# def one?(arr)
# 	counter = 0 
# 	arr.each do |ele| 
# 		counter += 1 if yield(ele)
# 		return false if counter == 2 
# 	end
# 	counter == 1 ? true : false 
# end

def one?(arr)
	seen_one = false 
	arr.each do |ele|
		next unless yield(ele)
		return false if seen_one
		seen_one = true 
	end
	seen_one
end

p one?([1, 3, 5, 6]) { |value| value.even? }    # -> true
p one?([1, 3, 5, 7]) { |value| value.odd? }     # -> false
p one?([2, 4, 6, 8]) { |value| value.even? }    # -> false
p one?([1, 3, 5, 7]) { |value| value % 5 == 0 } # -> true
p one?([1, 3, 5, 7]) { |value| true }           # -> false
p one?([1, 3, 5, 7]) { |value| false }          # -> false
p one?([]) { |value| true }                     # -> false