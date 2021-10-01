=begin
PEDAC Template
==============
(Understand the) Problem
return the length of the longest vowel chain in the string given 
------------------------
-  Inputs: a string
-  Output: an integer representing the longest vowel chain
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
p solve("codewarriors") == 2

p solve("suoidea") == 3

p solve("iuuvgheaae") == 4

p solve("ultrarevolutionariees") == 3

p solve("strengthlessnesses") == 1

p solve("cuboideonavicuare") == 2

p solve("chrononhotonthuooaos") == 5

p solve("iiihoovaeaaaoougjyaw") == 8
Data Structure
--------------
a string that is long and has repeating letters in it sometimes it is not in alpha betical order
and out puts a regular integer
---
Algorithm
---------
take the string and partition by the regex aeiou
return the max of the subarrays


**Helper Methods??**

Code
----
=end
def solve(string)
  string.split(/[^aeiou]/).sort_by {|n| n.length}[-1].size
end


p solve("codewarriors") == 2

p solve("suoidea") == 3

p solve("iuuvgheaae") == 4

p solve("ultrarevolutionariees") == 3

p solve("strengthlessnesses") == 1

p solve("cuboideonavicuare") == 2

p solve("chrononhotonthuooaos") == 5

p solve("iiihoovaeaaaoougjyaw") == 8