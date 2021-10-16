=begin
PEDAC Template
==============
(Understand the) Problem
find the smallest substrings that when repeating will create the string
------------------------
-  Inputs: a string
-  Output: the substring and an integer 
---
**Explicit **
---
**Clarifying Questions:**
1.
2.
3.
---
**Implicit Requirements:**
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
---
Algorithm
---------
set a var to empty string
set var to empty arr
each char the arg
append to result 
**Helper Methods??**

Code
dvide the string by 2 the length 

return the int that was upto 
----
=end

# def f(string)
#   str = ''
#   result = [string, 1]
#   string.each_char do |chr|
#     str += chr
#     (string.length / 2).downto(2) do |i|
#       result[0] = str if str * i == string
#       result[-1] = i  if str * i == string
#       return result if result[0] == str
#     end
#   end
#   result
# end

=begin
# ------------------- Problem ---------------------
find the smalles substring possible that would be able to be multiplied to create the entire string 

# ------------------- Examples --------------------
if it cant be reduced then it should return one 
if its uneven then likely the first example would happen
no capital letters in this one 
empty array should return emptyu arr?

# ------------------- Data ------------------------
just working with the string should be fine

# ------------------- Algorithm -------------------
def f str
return [string, 1] if string.length.odd?
init var of str.length /2
from 1 upto var do |n|
(1..lenght).each str[0, n] * i
return [str[], i] if 


# ------------------- Storm -----------------------

=end

def f str
  (1..str.size).each do |n|
    sub_str = str[0, n]
    reps = str.size / sub_str.size 
    return [sub_str, reps] if sub_str * reps == str
  end
end

p f("ababab") #== ["ab", 3]

p f("abcde") #== ["abcde", 1]

p f("abababab") #== ["ab", 4]