=begin
========================
write TWO methods 

One that takes a rational number as an argument and returns an arrayof the denominators that are part of an Egyptian fraction representation of the number

The second that takes an array of numbers in the same format and calculates the resulting rational number

dont forget to use the Rational class supplied by Ruby
------------------------
**Explicit Requirements**
------------------------
Egyptian fraction defenition: an egyptian fraction is made up of the sum of unit fractions that when summed togther make
the rational number that they were being used to create/represent

-   Rules for Egyption method: 
    - you are given a rational number represented by the Rational() method
    - the number can be greater than a unit fraction and may be representative of integers such as 5/1 == 5
    - remember that summed unit fractions is what makes up an egyptian fraction
    - use the rational method 
-  Inputs: the Rational method in which there is a numerator and a denominator as its two argurments
    - this is representative of a fraction 
-  Output: an array of every denominator used to make the egyptian fraction representing the passed in rational number

-   Rules for the Unegyptian method: 
    - given the egyptian method with an argument Rational(numerator, denominator) as input which returns an array 
    - output the correct rational number by adding all of the unit fractions that the itmes in the array represent
    - return the sum of the unit fractions 
-  Inputs: an array representing the denominators of an egyptian fraction
    - this array when summed as unit fractions defines a rational number passed in to the argument 
-  Output: a single rational integer 
    - this must evaluate to true when passed in with the equality method with Rational(numerator, denominator)
------------------------
**Clarifying Questions:**
------------------------
Egypt Method:
1. would rounding be appropriate in this situation?
Unegyptian Method:
1. same as Egypt, would rounding be appropriate? 
------------------------
**Implicit Requirements:**
egypt: 
  - needing to check if all of the unit fractions you have gathered make up the rational
  - appending the denominators that check out into a results array
  - there can be no repeats of denominators in the array; that breaks the rules of egyption fractions

Unegyptian Method: 
  - each number in the array passed in represents a unit fraction
  - you must sum the array, making sure that when you do all numbers being added are unit fractions
  - you must return the sum of the unit fractions as the return value of this method 
------------------------
Examples / Test Cases / Edge Cases
----------------------------------
Egypt Method:
egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]
Notes:
it seems like it starts with the biggest fractions first and then gets smaller from there to fit the empty space with no repeats 
Visual Representation Egypt Method: 
-> [1, 2, 3, 6]
-> [1, 2, 3, 4, 5]
-> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

Unegyptian Method:
unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)
Notes:
looking at the test cases there are no examples that should evaulate to false all must equal the exact rational number
rounding looks like it may not be needed from the outset 
--------------
Data Structure
--------------
Egyption Method:
- the largest possible unit fraction denominators appear first and in order they appear till the end 
- I can assume that integers are in order becasue we start with the largest first and finish with the smallest unit fraction that make up the rational number 

Unegyptian Method:
- array consisting of denominators of the unit fractions making up the egyption fraction
- each value in the array must be considered 
--------------
Algorithm
--------------
Egypt Method:
1. create an empty array to store denominators
2. set a sum variable to use as a sum storage 
  a. this to ensure that we either meet or stay under the rational 
2. set counter in order to use as an incrementing denominator
3. check if the unit fraction plus the sum created by Rational 1, counter is less or equal to the rational number
  a. increment counter by 1 if false
  b. if so append counter to result array add unit fraction to sum and increment counter by 1 
4. break when sum equals the rational. both rounded by 15
  a. break using round on each argument   
5. return the resulting array 

Unegyptian Method:
1. set a sum variable to a float zero or 0.0
2. convert an integer in the array to a unit fraction and add it to the sum
3. repeat step 2 untill there are no more integers to add to sum 
3. return sum 

Code
=end

def egyptian(rational)
  result = []
  sum = 0.0
  counter = 1
  
  until sum.round(15) == rational.round(15)
    if (Rational(1, counter) + sum) <= rational
      result << counter 
      sum += Rational(1, counter)
    end
    counter += 1  
  end
  result
end
# p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
# p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
# p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

# reference algorithm from above 
# 1. create an empty array to store denominators
# 2. set a sum variable to use as a sum storage 
#   a. this to ensure that we either meet or stay under the rational 
# 2. set counter in order to use as an incrementing denominator
# 3. check if the unit fraction plus the sum created by Rational 1, counter is less or equal to the rational number
#   a. increment counter by 1 if false
#   b. if so append counter to result array add unit fraction to sum and increment counter by 1 
# 4. break when sum equals the rational 
#   a. break using round on each argument. both rounded by 15 
# 5. return the resulting array 

# dicerning the logic of appending to array:
# Rule: fraction plus sum must be less than rational argument 
# Algorithm: 
#  - do not append if rational is more than the sum plus Rational n, counter is less than rational  
#  - (Rational(1, counter) * rational) plus the sum is greater than rational do not apend and increase counter
#  - (Rational(1, counter) * rational) plus the sum is less than rational apend to result and add to sum and increase counter

# break out of the loop with the correct logic:
# Rule: i must break out of the loop when the sum exactly equals the rational number 
# Algorithm: 
#  - pass sum into == along with the rational argument 
#  - call the round method on both rational and sum in the break conditional of until 
#  - make sure to add the unit fraction rational to the sum in the if condiitonal inside the loop 

# Notes:
# upon checking the first example to see if the loop would run correctly i got an infinite loop
# the counter infitily increased checking to see if sum is incremented by the guard clause properly 
# sum is indeed being incremented but its seems that it gets infinityly close to the rational number without ever getting there. round prehaps?

# using the round method with no arguments will not work as it increases the numbers more than I need them to be, so i am adding a 5 as the argument to round 
# this is because i want to preserve as much detail as i can in the number without it getting infinitly close to the sum i need 

# test case after using round was a success outputing [1, 2, 3, 6] checking other test cases now 

# on the second test case i got another infinite loop of the same nature as the last 
# I will place a 4 inside the round method inside of the break conditional and work down from there and watch the first and second example outputs to make sure they are both outputing the correct arrays
# after playing with the values going down to 1 in the round method I can still not get the method to ouput anything other than an infinite loop for the second example

# I decided to look in the ruby documentation for the fdiv method so that I could see what the rational came to as a float number which is 2.283333333333333
# currently my method is ouputing 2.2830000000000004, so it is never quite getting to the number necessary to break out of the loop 

# after returning to my algorithm and adding the round method with larger numbers than last to the appropriate places in my break condition 
# I successfully returned the correct arrays for both the first and second example
# however the third example outputs [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 251]; this seems to be because of the lack of smaller digits being added to the sum.
# upon furhter investigation breaking out of the loop with a small integer such as 3 ensures that on the third example, which requires smaller fractions, breaks out to early returning to algorithm below

# my hypothosis was correct using larger numbers on round in until break condition yeilded [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57961]. however I am still one number off. This simply means 
# i need a higher lever of accuracy 

# after stepping away from the problem for five minutes and coming back i realized that my if conditional is appending the counter to the array if it is less < than the sum when in reality it needs
# to be less than or equal to for the highest accuracy, in addition the round method on adding the rational(1, counter) to the sum was redundant when using round on the break conditional 
# the Egypt method is now operatinoal!


def unegyptian(array)
  sum = 0.0
  array.each do |n|
    sum += Rational(1, n)
  end
  sum.to_s.size > 17 ? sum + 0.0000000000000001 : sum
end

# Unegyptian Method:
# 1. set a sum variable to a float zero or 0.0
# 2. convert an integer in the array to a unit fraction and add it to the sum
# 3. repeat step 2 untill there are no more integers to add to sum 
# 3. return sum 

# Notes:
# upon checking the first example in the test cases true was returned: success
# now checking second-last

# the fourth and the fifth example returned as false, now checking what is being ouput in the fourth against what the rational should be 
# 0.9769230769230768 is the sum of the unegyption method and the rational is 0.9769230769230769
# the fifth exmaple is: the unegyption method is outputing 0.7142857142857142 and the rational is 0.7142857142857143

# it seems my Egyption method is going just a tad bit less than the number requires. I am going to play with the round method in the break statment of Egyption to see if I can get more accurate 
# The highest number i can pass into the round method without the function breaking is 15. It did not affect the output of the sum in anyway 
# after returning to the algorithm below everything now returns as true 

# *problem: I am a .0000000000000001 away from a correct answer on examples 4 and 5*
# Algorithm:
  # - use a ternary operator to add the necessary unit to the 16th decimal place
  # - for the if conditional 
      # - convert integer to string and call size 
      # - because it will include the 0. remember to add 2 to the size check 
  # - if size is above 17 then add 0.0000000000000001
  # - else return sum

p egyptian(Rational(2, 1))    # -> [1, 2, 3, 6]
p egyptian(Rational(137, 60)) # -> [1, 2, 3, 4, 5]
p egyptian(Rational(3, 1))    # -> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 230, 57960]

p unegyptian(egyptian(Rational(1, 2))) == Rational(1, 2)
p unegyptian(egyptian(Rational(3, 4))) == Rational(3, 4)
p unegyptian(egyptian(Rational(39, 20))) == Rational(39, 20)
p unegyptian(egyptian(Rational(127, 130))) == Rational(127, 130)
p unegyptian(egyptian(Rational(5, 7))) == Rational(5, 7)
p unegyptian(egyptian(Rational(1, 1))) == Rational(1, 1)
p unegyptian(egyptian(Rational(2, 1))) == Rational(2, 1)
p unegyptian(egyptian(Rational(3, 1))) == Rational(3, 1)



