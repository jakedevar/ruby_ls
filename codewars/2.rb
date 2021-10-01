=begin
PEDAC Template
==============
(Understand the) Problem
return a count of how many pairs of integers there are in an array
------------------------
-  Inputs: an array 
-  Output: a integer representing a count of how many pairs there are 
---
**Problem Domain:**
---
**Implicit Requirements:**
---
**Clarifying Questions:**
1. are there negative questions
2. am i allowed to use methods 
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
--------------
a value init to zero and a few iterators
---
Algorithm
take the array and each do it
  then within each do do an array count with the ele == x 
    += value if count.even?
---------
Code
----
=end

def pairs(arr)
 x = arr.tally.values
 x.map {|ele| ele / 2}.sum
end

  
  p pairs([1, 2, 5, 6, 5, 2]) #== 2
  
  p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) #== 4
  
  p pairs([0, 0, 0, 0, 0, 0, 0]) #== 3
  
  p pairs([1000, 1000]) == 1
  
  p pairs([]) == 0
  
  p pairs([54]) == 0