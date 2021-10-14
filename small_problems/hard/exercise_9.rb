=begin
========================
write TWO methods 

One that takes a rational number as an argument and returns an array
of the denominators that are part of an Egyptian fraction representation of the number

The second that takes an array of numbers in the same format and calculates the resulting rational number

dont forget to use the Rational class supplied by Ruby
------------------------
**Explicit Requirements**
------------------------
Egyptian fraction defenition: an egyptian fraction is made up of the sum of unit fractions that when summed togther make
the rational number that they were being used to create/represent
-   Rules for first method: 
    - you are given a rational number with the Rational() method
    - the number may be greater than a unit fraction and may be representative of integers such as 5/1
    - remember that summed unit fractions is what makes up an egyptian fraction
    - output an array of the denominators used to create the Egypt fraction
    - use the rational method 
-  Inputs: the Rational method in which there are a numerator and a denominator
    - this is representative of a fraction 
-  Output: an array of every denominator used in the egyptian fraction 

-   Rules for the second method: 
    - given the egyptian method as input
    - outputs the rational number used to create that array 
    - the rational method is passed into egyptian which is passed to this method unegyptian
-  Inputs: an array representing the denominators of an egyptian fraction
    - this egyption fraction when summed defines a rational number
-  Output: a single rational integer 
    - this must evaluate to true when passed in with the equality method to Rational(numerator, denominator)

------------------------
**Clarifying Questions:**
------------------------
Egypt Method:
1. it seems as though the denominators in the array go in order untill they get to the end then they get much larger sometimes 
2. 
3. 
------------------------
**Implicit Requirements:**
------------------------
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)

Visual Representation Egypt Method: 
-> [1, 2, 3, 6]
-> [1, 2, 3, 4, 5]
-> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]
--------------
Data Structure
--------------
Egypt Method:
- array consisting of denominators of the unit fractions making up the egypt fraction
- the largest possible unit fraction denominators appear first and in order they appear till the end 
- Can assume that integers are in order becasue we start with the largest first and finish when the denominators representing
unit fraction make up the rational number 

--------------
Algorithm
--------------
Egypt Method:
- A logical sequence of steps for acomplishing a task or an objective 
    - closly linked to data structers 
    - The steps required to structure the data to produce the desired output
- Stay abstract / high-level
    - avoid implementation detail
    - don't worry about efficiency for now

1. create an empty array to store denominators
2. set a sum variable to use as a sum storage 
  a. this to ensure that we either meet or stay under the rational 
2. set counter in order to use as an incrementing denominator
3. check if the unit fraction plus the sum created by 1/counter of the rational number is less than the rational numebr 
    a. increment counter if not
    b. if so increment counter and append counter to result array 
4. break when sum equals the rational 
5. return the resulting array 

*problem: Create a Loop*

Rules:
- Row is an array
- Arrays contain integers 
- Integers are consecutive even numbers
- Integers in each row are apart of an overall larger sequence
- Rows are of different lengths
-  Input: the information needed to create the output 
    -  The starting integer
    - Length of the row    
- Output: the row itself: '[8, 10, 12]'

Examples: 
start: 2, length: 1 --> [2]
start: 4, length: 2 --> [4, 6]
start: 8, length: 3 --> [8, 10, 12]

Data structures:
- An array of integers

Algorithm: 
1. create an empty row to contain the integers
2. Add the starting integer
3. increment the starting integer by 2
4. repeat steps 2 & 3 until the array has reached the correct length
5. return the 'row' array

**Helper Methods??**

Code
- Translating solution algorithm to code 
- Think about algorithm in context of programming language
    - Language features and constraints 
    - Characteristics of data structures
    - Built in funcitons / mehtods
    - Syntax and coding patterns
- Create test cases
- Code with intent
----
=end

def egyptian(rational)
  sum = 0.0
  counter = 1
  result = []
  until sum >= rational
    if (Rational(1, counter) + sum) < rational
      result << counter 
      sum += Rational(1, counter) 
    end
    counter += 1
    p result
  end
end

# Notes:
# upon checking to see if the loop would run correctly i got an infinite loop
# the counter kept increasing checking to see if sum is incremented by the guard clause properly 
# sum was not being incremented properly, I do not think a guard clause is the right tool for the job going to a regular if statment 

# 1. create an empty array to store denominators
# 2. set a sum variable to use as a sum storage 
#   a. this to ensure that we either meet or stay under the rational 
# 2. set counter in order to use as an incrementing denominator
# 3. check if the unit fraction plus the sum created by 1/counter of the rational number is less than the rational numebr 
#     a. increment counter if not
#     b. if so increment counter and append counter to result array 
# 4. break when sum equals the rational 
# 5. return the resulting array 

# dicerning the logic of appending to array:
# Rule: if 
# Algorithm: 
#  - do not append if rational is more than the sum plus Rationalcounter + rational 
#  - (Rational(1, counter) * rational) plus the sum is greater than rational do not apend and increase counter
#  - (Rational(1, counter) * rational) plus the sum is less than rational apend to result and add to sum and increase counter

# def create_row(start_integer, row_length)
#   row = []
#   current_integer = start_integer
#   loop do 
#     row << current_integer
#     current_integer += 2
#     break if row.length == row_length
#   end
#   row
# end

# 1. create an empty row to contain the integers
# 2. Add the starting integer
# 3. increment the starting integer by 2
# 4. repeat steps 2 & 3 until the array has reached the correct length
# 5. return the 'row' array

# Start the loop 
#   - Add the start integer to the row
#   - Increment the start integer by 2
#   - Break out of the loop if length of row equals row length
#   

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
# unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
# unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
# unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
# unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
# unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
# unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
# unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)



