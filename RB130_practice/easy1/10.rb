=begin
==========================
         Problem
--------------------------
Write a method that takes an array as an argument, and a block that returns true or false depending on the value of the array element passed to it. 

The method should return a count of the number of times the block returns true.

You may not use Array#count or Enumerable#count in your solution.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: dont use count in your solution
-  Inputs: an array and a block 
-  Output: an integer reping the true ele's 
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
a reg arr
--------------------------
       Algorithm
--------------------------
1. counter
2. iterate through increment if true
3. return coutner 
--------------------------
          Notes
--------------------------
Write a version of the count method that meets the conditions of this exercise, 
but also does not use each, loop, while, or until.
=end

# def count(arr)
# 	count = 0 
# 	arr.each {|ele| count += 1 if yield(ele)}
# 	count
# end

# # further expo

# def count(arr)
# 	counter = 0 
# 	0.upto(arr.size - 1) {|ele| counter += 1 if yield(arr[ele])}
# 	counter
# end

# def count(arr)
# 	arr.partition {|ele| yield(ele)}[0].size
# end

def count arr
	arr.select {|ele| yield(ele)}.size
end

p count([1,2,3,4,5]) { |value| value.odd? } == 3
p count([1,2,3,4,5]) { |value| value % 3 == 1 } == 2
p count([1,2,3,4,5]) { |value| true } == 5
p count([1,2,3,4,5]) { |value| false } == 0
p count([]) { |value| value.even? } == 0
p count(%w(Four score and seven)) { |value| value.size == 5 } == 2