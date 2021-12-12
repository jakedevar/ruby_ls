# rubocop: disable
=begin
==========================
         Problem
--------------------------
write code that takes modern decimal numbers and turns them into their roman numeral equivelant
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: - dont need to go over 3000
  - when you mean four or nine you have to subtract one from the nearest whole number
  -
-  Inputs: an integer of a number
-  Output: a string reping the roman numeral
--------------------------
**Clarifying Questions:**
           or
** Verbs and Nouns OOP **
--------------------------
-
--------------------------
**Implicit Requirements:**
--------------------------
there a certain numbers that make sense for the 10's place that they are in
subtracting when you mean four is the way to go for four and 40 and any 4 really
--------------------------
Examples/Test Cases/Edge's
--------------------------

I will only ever be working with numbers that are no larger than 4 decimal places,
i do need to make certain that i tell ruby to do a different "one " for the decimal place that it is in

A constructor that accepts a non-Roman integer number as an argument. From the test cases, it appears that the constructor does not raise any errors.

A method that returns the Roman numeral representation of that number as a string.
The name of this method will be either to_roman or toRoman depending on the conventions for your programming language of choice.
--------------------------
     Data Structure
--------------------------

Our input is an integer in our language of choice, and our output is a string.
We may want to use some type of collection to help us create the desired output since it can make iteration easier.
It might also be a good idea to have another collection hold some key conversions between numbers and Roman numerals.

We may also need a separate collection that holds key conversions between numbers and Roman numerals.
How would ascending or descending order impact its ease of use?

--------------------------
       Algorithm
--------------------------
1. create hashes depending on the index that we are using and make them roman numberals
  - is there a way for the computer to just figure out the number instead of hardcoding?
  - take the number and if you can divmod by 5 then append the 5 place and then use multiplication for the three and 6-8, if 4 then 2 place and nine then 3 place
2.
3. reverse and then join

--------------------------
          Notes
--------------------------
im sort of thinking that i should use digits to take the numbers arr and then it reverses it automatically,
when it does that i can measure the array length and then use the index number to determine what system to use
i can make three different systems that are hashes and look up the number based on the decimal place

wait, make a nested hash of the arrs, then i can use the index to access each arr and then use the nums to access the numbers
=end
# rubocop: enable

NUMS = { 0 => ['I', 'V', 'IV', 'IX'], 1 => ['X', 'L', 'XL', 'XC'],
         2 => ['C', 'D', 'CD', 'CM'], 3 => ['M'] }

class RomanNumeral
  attr_reader :n

  def initialize(n)
    @n = n
  end

  def to_roman
    num = n.digits
    num.map.with_index do |ele, ind|
      arr = ele.divmod(5)
      if arr[0] == 1 && arr[1] == 4
        NUMS[ind][3]
      elsif arr[0] == 1
        NUMS[ind][1] + (NUMS[ind][0] * arr[1])
      elsif arr[1] == 4
        NUMS[ind][2]
      else
        NUMS[ind][arr[0]] * ele
      end
    end.reverse.join
  end
end
