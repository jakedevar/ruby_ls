=begin
==========================
         Problem
--------------------------
Write a program that, given a natural number and a set of one or more other numbers, 
can find the sum of all the multiples of the numbers in the set that are less than the first number. 
If the set of numbers is not given, use a default set of 3 and 5.
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - there are two methods you need to make, there needs to be a class method and then an instance method 
  - use 3 and 5 as default numebrs if there is not a set of numbers given that need to be used to see if there are any mutliples  
  - upto but not including 20 
-  Inputs: an integer, also could be a set of integers to use as multiples of the number 
-  Output: a number that is the sum of the array 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- how shuold the multiples with the set be given to check with the program 
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------

there are two methods, one is an instance and one is a class method, 
there is one example where zero needs to be returned 

--------------------------
     Data Structure
--------------------------
there should be a way to iterate through the set of multiples needed so that we are not missing any when we append them to an array 
--------------------------
       Algorithm
--------------------------
1. create class method with 3 and 5 as multiples 
2. from 1 to the num do and each with object
3. inside iterate through the multiples and if it works then use the object to append to
  - make sure multiples are not returned as well 
4. return sum 

1. create initialize with an array and the args splat
2. use the same method more less except change the implementation to match 

--------------------------
          Notes
--------------------------

=end

class SumOfMultiples
  def initialize *args
    @arr = args 
  end

  def to n 
    (1...n).each_with_object([]) do |num, arr|
      @arr.each {|n| arr << num if num % n == 0}
    end.uniq.sum 
  end

  def self.to n 
    (1...n).each_with_object([]) do |num, arr|
      [3, 5].each {|n| arr << num if num % n == 0}
    end.uniq.sum 
  end
end