=begin
PEDAC Template
==============
(Understand the) Problem
return the length of the longest vowel chain in the string given 
check the characters to the vowels given 
------------------------
-  Inputs: a string
-  Output: an integer representing the longest vowel chain
---
**Explicit **
---
**Clarifying Questions:**
1. I cannot group or select because that would just return a conglomerate
2. I need to count the length of the longest vowel chain
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
take the string and create an array where the vowels are grouped together using split. then map by length and return max


**Helper Methods??**

Code
----
=end
# def solve(string)
#   string.downcase.split(/[^aeiou]/).map {|ele| ele.length}.max
# end

=begin
PEDAC Template
==============
(Understand the) Problem
take a string an output the count of the longest vowel chain in the whole string 
------------------------
-  Inputs: a simple string all lower case letters 
-  Output: a integer reping a count 
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
  -  Inputs: AkhaujLLoO
  -  Output: 2
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
  -  Inputs: ''
  -  Output: 0
---
Data Structure
--------------
use an array for this one 
---
Algorithm
---------
# I will downcase the whole string just to account of edge cases

take the string and split to chars
chunk_by is regex match vowels
return max_by legnth

**Helper Methods??**

Code
Def solve str
  str.chars.chunk_by match.max_by 
end
----
=end

def solve(str)
  str.split(/[^aeiou]/i).map {|arr| arr.length}.max
end

p solve("codewarriors") #== 2

p solve("suoidea") #== 3

p solve("iuuvgheaae") == 4

p solve("ultrarevolutionariees") == 3

p solve("strengthlessnesses") == 1

p solve("cuboideonavicuare") == 2

p solve("chrononhotonthuooaos") == 5

p solve("iiihoovaeaaaoougjyaw") == 8