
=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: a year as an integer
-  Output: a string containing the century
**Problem Domain:**
---
**Implicit Requirements:**
---the input will be an integer
the output will be a string that is returned
st, nd, rd, th will be added to a string integer 
**Clarifying Questions:**
1. Should i be using the time class in ruby docs
2. what if years go backwards
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
--- case when control flow 

Algorithm
---------
take the year and then divide it by 100 that leaves usually the century -1. if I plus one then i can get the century and add st's and nd's
however that leaves out the fact that it goes from 1 to 1. unless year.last(-2, 2) == '01'
Code
----
=end
require 'pry'
def end_fix(convert)
  if convert == '11' || '12'
    convert << 'th'
  elsif convert[-1] == "1"
    convert << 'st'
  elsif convert[-1] == '2'
    convert << 'nd'
  elsif convert[-1] == '3'
    convert << 'rd'
  else 
    convert << 'th'
  end
end


def century(year)
  conversion = (year / 100).to_s
  s_year = year.to_s
  if s_year[-2, 2] == '00'
    conversion
  else
    conversion = (conversion.to_i + 1).to_s 
  end
  end_fix(conversion)
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

#lol close enough. Im proud of you jake you got it. What was important to me is that i figured it out on my own. yes i didnt quite get the end fixes right 
#but i did what i could not do months ago. and i would have got the fixes right to but i have spent to much time on this problem to do busy work like that