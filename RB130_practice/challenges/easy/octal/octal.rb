=begin
==========================
         Problem
--------------------------
convert a string representing a number to the corresponding octal number 
--------------------------
**Explicit Requirements**
--------------------------
-  Rules: cant use any library methods 
  - there is the regular way to do this with the conversion method 
-  Inputs: a string 
-  Output: an integer representing the sum of the numbers 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- 
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------

i need to dea lwith a string with numbers mixed with strings 
in this case i need to be aware that these will always == 0 
  other than that no negative numbers or zeros 

--------------------------
     Data Structure
--------------------------
i need to make a guard clause with regex to spit out a zero 
also i need to think about converting to an integer and then using digits to reverse stuff
i can then use that to iterate though and times by the index 
--------------------------
       Algorithm
--------------------------
1. take string and make guard clause with match
2. convert to an integer and split up
3. iterate with index and map and then do the necessary converstion
4. return sum 

--------------------------
          Notes
--------------------------

=end

class Octal
  attr_reader :n

  def initialize n 
    @n = n 
  end

  def to_decimal
    return 0 if n =~ /[\D9]/ || n == '8'
    n.to_i.digits.map.with_index {|ele, ind| ele * 8**ind}.sum
  end
end