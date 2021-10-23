=begin
PEDAC Template
==============
Write a method that counts the number of occurrences of each element in a given array.
------------------------
-  Inputs: An array of strings
-  Output: a hash containing the counts
---
**Problem Domain:**
count every instance of a value in the array, using a hash to increment the count value
---
**Implicit Requirements:**
A hash will be created by the elements in the array and then the value will be initialized to zero at the outsed
---
**Clarifying Questions:**
1.
2.
3.
---
**Mental Model:**
---
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
-  Example 1
  -  Inputs:
  -  Output:
-  Example 2
  -  Inputs:
  -  Output:
---
_Your Test Cases:_
-  Example 3
  -  Inputs:
  -  Output:
---
_Your Edge Cases:_
-  Example 4
  -  Inputs:
  -  Output:
---
Data Structure
inputing an array and returning a hash
--------------
---
Algorithm
define the method with one parameter
set a vriable to Hash.new(0)
use an each block on array and in the block set the argument to the hash key and the count value of the value to count to the value in the hash
---------
Code
----
=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck', 'suv'
]

def count_occurrences(array)
  hash = {}
  array.each do |ele|
    unless hash.has_key?(ele.upcase)
      hash[ele] = array.count do |item|
        ele.downcase == item.downcase
      end
    end
  end
  hash
end

p count_occurrences(vehicles)
