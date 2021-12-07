=begin
==========================
         Problem
--------------------------
# Write a method that takes a sorted array of integers as an argument, 
# and returns an array that includes all of the missing integers (in order) between the first and last elements of the argument.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: 
	- the array is already sorted 
	- must return an array of the missing integers in order between first and last numbers 
-  Inputs: an array 
-  Output: an array 
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
1. take a range of the first and last elements of the array
2. go through the argument array and delete the things from the result array with the iterations 

--------------------------
          Notes
--------------------------

=end

def missing(arr)
	res = (arr.first..arr.last).to_a 
	arr.each {|n| res.delete(n)}
	res 
end

p missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
p missing([1, 2, 3, 4]) == []
p missing([1, 5]) == [2, 3, 4]
p missing([6]) == []