=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a string with special chars
-  Output: a boolean
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
a simple sentacne encased in double quotes sometimes with punctuation 
---
Algorithm
---------
delete all the punctuation and then uniq and sort 

**Helper Methods??**

Code
----
=end
ALPHA = ('a'..'z').to_a
def panagram?(string)
  return true if string.downcase.chars.uniq.sort.delete_if {|ele| ele =~ /[^A-Za-z]/} == ALPHA
  false
end

p panagram?("The quick brown fox jumps over the lazy dog.") == true

p panagram?("This is not a pangram.") == false