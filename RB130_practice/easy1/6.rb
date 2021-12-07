=begin
==========================
         Problem
--------------------------
Write a method called any? that behaves similarly for Arrays. It should take an Array as an argument, and a block. 

It should return true if the block returns true for any of the element values. Otherwise, it should return false.

Your method should stop processing elements of the Array as soon as the block returns true.

If the Array is empty, any? should return false, regardless of how the block is defined.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: 
	- make your own any? method and pass it a block 
	- it should return eather false or true flase if empty 
	- always has a block input 
-  Inputs: an array and a block
-  Output: bool 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------
you have to use an iterator to go though the elements 
--------------------------
Examples/Test Cases/Edge's
--------------------------

-  Visual Reference:

--------------------------
     Data Structure
--------------------------
an array lol 
--------------------------
       Algorithm
--------------------------
1. iterate through the arr
2. send ele to a block
3. if the block returns true then return true else false 

--------------------------
          Notes
--------------------------

=end

def any?(arr)
	arr.each  {|ele| return true if yield(ele)}
	false
end


p any?({a:1, b:2, c:3}) {|key, val| puts key}
# p any?([1, 3, 5, 6]) { |value| value.even? } == true
# p any?([1, 3, 5, 7]) { |value| value.even? } == false
# p any?([2, 4, 6, 8]) { |value| value.odd? } == false
# p any?([1, 3, 5, 7]) { |value| value % 5 == 0 } == true
# p any?([1, 3, 5, 7]) { |value| true } == true
# p any?([1, 3, 5, 7]) { |value| false } == false
# p any?([]) { |value| true } == false