=begin
==========================
         Problem
--------------------------
make a class method program that makes a diamond with the length being determined by what letter is input into the program 
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: class method, letter determines row, goes to the middle then back again 
  - all rows except first and last have identical letters
  - the diamond is square in that width == height
  - rememebr that this is going to return a string not an output!!!!
-  Inputs: a string containing a letter which reps a row 
-  Output: a diamond with letters as the sides 
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
- no negatives or wierd inputs? 
--------------------------
**Implicit Requirements:**
--------------------------

--------------------------
Examples/Test Cases/Edge's
--------------------------

just b able to deal with one that just one in length 

--------------------------
     Data Structure
--------------------------
im used to doing the this problem from previous exercises but there is a caveat
i am going to need to thing about using the alphabet as an array that is created on makign 
then i am going t oprobly need a method to detrmine the spaces 
--------------------------
       Algorithm
--------------------------
1. make class method for taking the input and making the array 
  - make the boolean at the top flip when the counter == array size 
  - if bool is one way the ncounter += 1 if not then -=, that way dont have to flip logic 
  - make it break if the counter goes below 0 
2. use the method for determining the spaces in between to determine spaces
  - rememebr with the diamond you have to put a space on the left side for it to make a diamond 
3. do it backwards after forwards ommiting the middle space 

--------------------------
          Notes
--------------------------
maybe make the thing on a loop that works off a boolean, when it hits the top it flips the boolean and goes back down 

=end

class Diamond
  def self.make_diamond(ltr)
    return ltr + "\n" if ltr == 'A'
    bool = false 
    arr = ('A'..ltr).to_a
    counter = 0 
    res = []
    until counter < 0 
      res << spaces(counter, arr)
      counter += 1 if !bool 
      counter -= 1 if bool
      bool = !bool if counter == arr.size - 1
    end
    puts res.join("\n")
  end

  def self.spaces counter, arr 
    return "#{' ' * (arr.size - counter - 1)}#{arr[counter]}#{' ' * (2* counter)}#{' ' * (arr.size - counter - 1) }" if counter == 0
    "#{' ' * (arr.size - counter - 1)}#{arr[counter]}#{' ' * (2* counter-1)}#{arr[counter]}#{' ' * (arr.size - counter - 1)}" if counter != 0 
  end
end

Diamond.make_diamond('E')
