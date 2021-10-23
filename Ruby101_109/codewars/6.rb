=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a string
-  Output: an integer of the number of odd numbered substrings
---
**Explicit **
---
return an integer that represents the number of odd substrings within the string
**Clarifying Questions:**
1. will there be alpha characters in the string of integers
2.
3. will there be any + or - signs
---
**Implicit Requirements:**
i have to convert the string to an integer to check if odd
select the odd numbers out of an array of possible combinations
check if convert equals only numbers
you only need to check the integers as they are right now in order
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
a string that represents an integer
---
Algorithm
---------
take the string and combine into all possible combinations from back to front
break the string up and begin concatinating from backwards to forwards for each element. convert to integer and append to result array if odd
  make sure not to get doubles so only one iteration please
  send all single odd numbers to the array
  start from one index and build from there
  each with index on chars iterate through chars and set a variable to an empty string and concat each element and ehck if it is odd then add to arr

**Helper Methods??**

Code
----
=end

# def solve(string)
#   result = []
#   chars = string.chars
#   chars.each_with_index do |chr1, indx1|
#     str = chr1
#     chars.each_with_index do |chr2, indx2|
#       next if indx2 < indx1
#       str += chr2 if indx2 > indx1
#       result << str if str.to_i.odd?
#     end
#   end
#   result.length
# end

=begin
# ------------------- Problem ---------------------
return the count as an integer of all the substrings that are odd including single digits
from the input string

# ------------------- Examples --------------------
just numbers no empty strings it looks like
be ready to return 0

# ------------------- Data ------------------------
using an array for this one to use the with index

# ------------------- Algorithm -------------------
call each index on chars
call each index on chars again
counter += 1 if above crurent index and str slice to i is odd?

def solve str
  split string to chars
  counter
  each ind
  each ind
  guard clause
  counter return
end

# ------------------- Storm -----------------------
hypothesis, the count will be below what it should be because the index being called in slice will go to nil
=end

def solve(str)
  chars = str.chars
  counter = 0
  chars.each_index do |ind1|
    chars.each_index do |ind2|
      counter += 1 if str[ind1..((ind2 + 1) - str.size)].to_i.odd?
    end
  end
  counter
end

p solve("1341") == 7

p solve("1357") == 10

p solve("13471") == 12

p solve("134721") == 13

p solve("1347231") == 20

p solve("13472315") == 28
