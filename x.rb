=begin
==========================
         Problem
--------------------------
write a method that take an array plus a symbol and a conjuctive word and 
makes it so that everything is joined by the symbols and then the last element in the array is joined by the conjunction
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: put this shit in a OOP TTT program
-  Inputs: an array and symbol and conjunction
-  Output: a string with the joined stuff 
--------------------------
**Clarifying Questions:**
--------------------------
1.
2.
3.
--------------------------
**Implicit Requirements:**
--------------------------
joining with a phrase in the last place 
--------------------------
Examples/Test Cases/Edge's
--------------------------
     Data Structure
--------------------------
a simple array that you have to turn into a string seperated by a symbol 
--------------------------
       Algorithm
--------------------------
1. define with default params in addition to arr
2. join string and replace the last two elements with the elemnts plus conjunction 
3. join every thing 

  **??Helper Methods??**
1. make the second element equal to the last two
2. pop the last ele off 
--------------------------
          Code
--------------------------
=end

def joinor(arr, sym = ', ', conj = 'or')
	arr[-2] = "#{arr[-2]} #{conj} #{arr[-1]}"
	
	arr.pop
	arr.join(sym)
end

p joinor([1, 2])                   # => "1 or 2"
p joinor([1, 2, 3])                # => "1, 2, or 3"
p joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
p joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"