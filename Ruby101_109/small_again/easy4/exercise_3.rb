=begin
PEDAC Template
==============
(Understand the) Problem
------------------------
-  Inputs: year as an integer
-  Output: boolean
---
**Problem Domain:**
---
**Implicit Requirements:**
--- you will return a boolean
there will be math involved
**Clarifying Questions:**
1. is there negative years?
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
--------------
and if else statment will do the trick on this one
---
Algorithm
---------
if year is % by 100 and not % 400
Code
----
=end

def leap_year?(year)
  if year % 100 == 0 && year % 400 != 0
    false
  elsif year % 400 == 0 || year % 4 == 0
    true
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true
