=begin
========================
Sort an array of passed in values using merge sort. Assume that this array may contain only one
type of data. And the data may be either all numbers or all strings.

Merge sort is a recursive sorting algorithm that works by breaking down the array elements into nested sub-arrays,
then recombining the nested sub-arrays in sorted order.
------------------------
**Explicit Requirements**
------------------------
-   Rules: 
    - given an array of unsorted elements 
    - all elements are of a single data type
    - the array must be breaken into sub arrays 
    - the array must be sorted by recombining the sub-arrays
    - the array of strings must be sorted alphabetically

-  Inputs: a single array of one data type either strings or integers
    - needs to be sorted by breaking the array into nested subarrays and then recombined
-  Output: an array that has been sorted using merg_sort as well as merge written in previous exercise
    - an integer represting the sum of row 

(helpfull hints: this method seems to work well with recursion)

------------------------
**Clarifying Questions:**
------------------------
1. because we are encouraged to use the method from the previous exercise, we do not mutate the array?
2. there does not seem to be an array that is less than 2 
3. there also does not seem to be any empty arrays given
------------------------
**Implicit Requirements:**
- we must use an array to store nested sub-arrays
- merge() is going to be usefull in creating a solution to this problem
- given an array of uneven size the element must be either left to be in its own single sub-array or put into a larger one to be broken up
- the array with strings of single names must be sorted alphabetically, all of the first letters are capitalized
------------------------
Examples / Test Cases / Edge Cases
----------------------------------
**Examples:**
merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
merge_sort([5, 3]) == [3, 5]
merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

Visual Example:
[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]] ->
[[[9], [5]], [[7], [1]]] ->
[[5, 9], [1, 7]] ->
[1, 5, 7, 9]
--------------
Data Structure
--------------
- Input starts as a whole array
- the array is split into sub-arrays
- those sub-arrays are then split again to create sub-arrays containing a single element
- the sub-arrays containing single elements are then merged 
- the merged sub-array must have the elements sorted
- this process must repeat until a single sorted array is output 

--------------
Algorithm
--------------

*problem: split the array recursivley and merge*

-Rules:
- must split the array in half (if odd then place odd in one of the sub-arrays) 
- elements in each sub-array are apart of an overall larger neighboring system
- the nieghboring system remains the same during the split process of half the array size being split
-  Input: the array
- Output: a split array containing one element

Examples: 
[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]] ->

Data structures:
- An array to be split in half 

Algorithm: 
1. set two variables set to the first and seconds halves of the array 
  a. add ternary logic into the variables such that when the array size is even it will be appropriatly divided
2. pass said variables into two instances of a recursive mergesort() 
  a. the merge() method must be set to their own variables
3. return the array passed in when the argument array size is 1 or less than 1
4. repeat steps 1-3 until the array's has reached the correct length
5. pass the variables representing each a single digit into merge() and return result

**problem: refactor the merge method to work**

----
=end

# p merge([6, 2, 7], [3, 5])
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end

def merge_sort(array)
  return array if array.size == 1 || array.size == 0
  first_half = array.size.even? ? array[0..((array.size/2)- 1)] : array[0..array.size/2]
  second_half = array.size.even? ? array[array.size/2..-1] : array[(array.size/2 + 1)..-1]
  
  arr1 = merge_sort(first_half)
  arr2 = merge_sort(second_half)

  return merge(second_half, first_half)
end

# Notes:

# testing first half and second half with merge on odd sized array works correctly
# first half contains the odd middle element

# testing that merge works within the mergesort method with the two halves using the odd sized array in the third example: test was a failure

# testing that merge works with single digit arrays 
# test was a success 
# my hypothesis is that because we are working with single digit arrays the odd integer test will not be of consequence


# Note: upon inspecting the test case where the array is of an odd numbered size there may be a situation in which an integer is copied due to the way i am splitting the array
# upon inspection of second_half array[(array.size/2 + 1)..-1] will return an empty array as the starting integer is beyond the scope of the array

# upon testing merge_sort with the given example test cases an error returned with the stack level being too deep
# my hypothosis is that due to empty arrays begin passed into the merge_sort funciton. I originally had it set to return when the array size == 1 however this does not 
# check out with empty arrays setting to <= 1. My hypothosis is that the odd numbered example would work fine with this 
# though this is something that i believe is indeed part of the solution and was logic i did not address in the original algorithm this was not the solution 
# after placing p before array, first_half, and second_half. I noticed that the array when down to two elements was not being split at all. That explains why it did not work with the even numbered example
# after consideration; this is because when an array is of size 2 and divided by two 1 remains, when one is added to that it references the 2nd index (or the third element) 
# I will add the correct logic with a ternary operator into the variables as to produce the correct split when the array size is even vs. odd 

# testing if the ternary logic in the variables for the split array works properly with first, second, and third examples: all were a success
# testing the same for the second: success
# now attemtping entire solution with the first example: false was returned now commenting out the == to see what is under the hood
# it seems as though ther merge method is not working with the sub-arrays passed into it [7, 1, 9, 5] is returned on first example and [1, 4, 6, 2, 7] is returend on third 
# priting out all of the first and second halves on the third example to make sure they are all getting down to one element. It looks like they all are
# now testing that merge will corectly handle the third example split manually: it does not, it ouputs [3, 5, 6, 2, 7]
# upon inspection it seems that the method does not work with certain comparisons under certain conditions working at refactoring now 


p merge_sort([9, 5, 7, 1]) #== [1, 5, 7, 9]
# p merge_sort([5, 3]) == [3, 5]
# p merge_sort([6, 2, 7, 1, 4]) #== [1, 2, 4, 6, 7]
# p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) #== %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# p merge([5], [3])
# p merge([6, 2, 7], [3, 5])


# Calculating the start integer:
# Rule: First integer of row == last integer of preceding row + 2
# Algorithm: 
#  - get the last row of the rows array row
#  - Get last integer of that row 
#  - add 2 to the integer

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

# p sum_even_number_row(1) == 2
# p sum_even_number_row(2) == 10
# p sum_even_number_row(4) == 68

# start: 2, length: 1 --> [2]
# start: 4, length: 2 --> [4, 6]
# start: 8, length: 3 --> [8, 10, 12]

# p create_row(2, 1) == [2]
# p create_row(4, 2) == [4, 6]
# p create_row(8, 3) == [8, 10, 12]

# final thoughts
# don't think of pedac as a linear process. see it more as something that you come back to at multiples times throughut the expereince  
# switch from implementation mode to abstract problem solving mode when necessary 
# don't try to problem solve at the code level!!!!!! talking to you jake tee hee love ya bud




