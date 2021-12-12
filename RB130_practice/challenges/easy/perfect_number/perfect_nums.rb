=begin
==========================
         Problem
--------------------------
write a funciton classify that takes an integer as an argument and then finds all the ways that it could be perfectly divided and then stores in an array.
that array is then summed and if it is greater than the number it spits out something depending on the specifications 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: see problem description 
-  Inputs: in integer 
-  Output: a string 
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

I need to make a guard clause that checks if the thing is less than 1 and spits out an error message 

--------------------------
     Data Structure
--------------------------
I need to think about how I can take this number and then iterate thorugh only the numbers where it has a chance to divide cleanly 
which in reality is just about up to half of the original number. 

the integer just needs to be iterated up to half and then placed into an array then summed 
--------------------------
       Algorithm
--------------------------
1. create the class method 
2. take the ineteger and iterate to half
3. place numbers that divide cleanly into the array
4. sum the array. 
5. take sum and use if logic to return a string 

--------------------------
          Notes
--------------------------

=end

class PerfectNumber
  def self.classify num 
    raise StandardError if num < 1
    perf = (1..num/2).each_with_object([]) {|ele, arr| arr << ele if num % ele == 0}.sum 
    if perf == num 
      'perfect'
    elsif perf > num 
      'abundant'
    else
      'deficient'
    end
  end
end