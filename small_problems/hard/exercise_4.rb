=begin
========================
the previous exercises method would transpose a 3 X 3 matrix represented by an array of arrays 

any matrix can be transposed by switching columns with rows. 

modify the transpose method from the previous exercise so it works with any matrix
with at least 1 row and 1 column 
------------------------
**Explicit Requirements**
------------------------
-   Rules: 
    - must modify method from last exercise
    - must work with at least 1 row and 1 column 
    - transposing a matrix is simply flipping the original matrix
    - you can tranpose any matrix by switching columns with rows 
-  Inputs: an array representing either a matrix, a row('s) or column('s)
    - each sub array denotes a row
    - each integer represents a column
-  Output: a transposition of the original array
------------------------
**Clarifying Questions:**
------------------------
1. I must not mutate the array like the last question suggests?
2. if there is an example with a row with an uneven amount of columns compared to the rest of the rows should i return a certain result?
------------------------
**Implicit Requirements:**
- each number represents a column in the matrix
- each array represents a row
- the columns an the rows are not always equal numbers
------------------------
Examples / Test Cases / Edge Cases
----------------------------------
transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]: switching columns which is the size of the row with the number of rows yeids a new looking matrix
transpose([[1]]) == [[1]]: swithing rows with columns yeilds same result
--------------
Data Structure
--------------
- Individual columns within overall structure are simply the elements in the array('s) so the size of the sub-array's
- Individual rows are each sub array, the count is how many arrays there are 
- Individual rows contain integers and integers only
- Can assume that because of the data being a matrix that there always will be even amount of numbers in the arrays and no incomplete columns 
visual representation of a matrix: 
[
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]
--------------
Algorithm
--------------
1. place method from the last problem into this file 
2. initalize new_column number with the size of the matrix
3. initalize new_row number with the size of the first sub_array in matrix 
4. switch the 2 in the range 0..2 in each with the new_row number
  - insert another . in the range as to not exceed size of array in matrix
5. switch the 2 in the range 0..2 in map with the new_column number
  - insert another . in the range as to correctly specify how many items to select
6. rename new_row in the each method to transposed row 
7. return the result array
----
=end

def transpose(matrix)
  result = []
  new_column = matrix.size
  new_row = matrix[0].size
  (0...new_row).each do |column_index|
    transposed_row = (0...new_column).map { |matrix_sub_array_index| matrix[matrix_sub_array_index][column_index] }
    result << transposed_row
  end
  result
end
[1, 2, 3, 4]

# Notes:
# printing out new_column and new_row to make sure they are correct: they are 
# attempting with first example: undefined method [] returned
# needed to load the problem into my brain futher and walk out what each step would acomplish. 
# renamed the row_index to matric_sub_array_index as to now get confused about what was being accessed
# in addition there was variable shadowing occuring within the each method with the new_row variable, returned to algorithm to rename
# attempting again with example one: success
# attempting other examples

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]

# def sum_even_number_row(row_number)
#   row = []
#   start_integer = 2
#   (1..row_number).each do |current_row_number|
#     row << create_row(start_integer, current_row_number)
#     start_integer = row.last.last + 2
#   end
#   row[-1].sum
# end

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


