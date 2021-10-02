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

def f(string)
  str = ''
  result = [string, 1]
  string.each_char do |chr|
    str += chr
    (string.length / 2).downto(2) do |i|
      result[0] = str if str * i == string
      result[-1] = i  if str * i == string
      return result if result[0] == str
    end
  end
  result
end

p f("ababab") #== ["ab", 3]

p f("abcde") == ["abcde", 1]

p f("abababab") == ["ab", 4]