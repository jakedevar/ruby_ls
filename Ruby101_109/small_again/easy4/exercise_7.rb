=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a string representing an integer
-  Output: an integer version of the string
---
**Problem Domain:**
---
**Implicit Requirements:**
---you will not use any methods to convert said number
**Clarifying Questions:**
1. no negatives
2. no non alphanumeric characters?
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
hash for this sounds right
---
Algorithm
---------
break into chars and each do
take return value from hash and add it to a stacking number? the problem with this is idk if you can stack thing with out converting it to string
refresh the array with said thing by the value of the hash
return
Code
----
=end
def string_to_integer(string)
  hash = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
           '7' => 7, '8' => 8, '9' => 9 }
  convert = string.chars.map { |ele| hash[ele] }

  value = 0
  convert.each { |digit| value = 10 * value + digit }
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
