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
- A logical sequence of steps for acomplishing a task or an objective 
    - closly linked to data structers 
    - The steps required to structure the data to produce the desired output
- Stay abstract / high-level
    - avoid implementation detail
    - don't worry about efficiency for now

1. take the input array and break up into two halves 
  a. if array is of odd size make sure the odd middle integer is in one of the arrays
2. repeat step 1 until all of the elements within the array are singly in their own seperate sub-arrays
3. start with the individual sub-arrays and merge with their neighbor in the same manner as which they were split
    a. they must be sorted when they are merged 
4. repeat step 3 untill an array with no other sub-arrays in it is returned with all of the elements within sorted 
5. return the the sorted array

*problem: split the array recursivley*

-Rules:
- must split the array in half (if odd then place odd in one of the sub-arrays)
- must return the sub_array when the sub-array size is equal to 1
- 
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

def merg_sort

end

# 1. create an empty 'rows; array to contain all of the rows
# 2. create a 'row' array and add it to the overall 'rows' array
#     a. do this...
#     b. do that...
# 3. repeat step 2 until all the necessary rows have been created
#     - All rows have been created whne the length of the 'rows' array is equal to the input
# 4. sum the final row
# 5. return the sum 

# Calculating the start integer:
# Rule: First integer of row == last integer of preceding row + 2
# Algorithm: 
#  - get the last row of the rows array row
#  - Get last integer of that row 
#  - add 2 to the integer

def create_row(start_integer, row_length)
  row = []
  current_integer = start_integer
  loop do 
    row << current_integer
    current_integer += 2
    break if row.length == row_length
  end
  row
end

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

p sum_even_number_row(1) == 2
p sum_even_number_row(2) == 10
p sum_even_number_row(4) == 68

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




