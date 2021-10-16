=begin
========================
the previous exercises method would transpose a 3 X 3 matrix represented by an array of arrays 

any matrix can be transposed by switching columns with rows. 

modify the transpose method from the previous exercise so it works with any matrix with at least 1 row and 1 column 
------------------------
**Explicit Requirements**
------------------------
-   Rules: 
    - must modify method from last exercise
    - must work with at very least 1 row and 1 column 
    - you can tranpose any matrix by switching columns with rows 
-  Inputs: an array representing either a matrix 
    - each sub array denotes a row
    - each integer represents a column
-  Output: a transposition of the original array
  - the original array with column numbers and row numbers flipped 
------------------------
**Clarifying Questions:**
------------------------
1. if there is an example with a row with an uneven amount of columns compared to the rest of the rows should i return a certain result?
------------------------
**Implicit Requirements:**
- each number represents a column in the matrix
- each array represents a row
- the columns an the rows are not always the same number
- transposing a matrix is simply flipping the original matrix
------------------------
Examples / Test Cases / Edge Cases
----------------------------------
transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]: perfect example of very uneven columns and rows being swapped
transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]: inverse of above 
transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]: switching columns which is the size of the row with the number of rows yeids a new looking matrix
transpose([[1]]) == [[1]]: swithing rows with columns yeilds same result
--------------
Data Structure
--------------
- Individual columns within overall structure are simply the elements in the array('s); so the size of one sub-array is the amount of columns
- Individual rows are each sub array, the count of matrix is how many arrays there are 
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
5. switch the 2 in the range 0..2 in map with new_column
  - insert another . in the range as to correctly specify how many items to select
6. rename new_row in the each method to transposed row to avoid variable shadowing 
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
# visual representation of first example:
# [1, 2, 3, 4]

# Notes:
# printing out new_column and new_row to make sure they are correct: they are 
# attempting with first example: undefined method [] returned
# needed to load the problem into my brain futher and walk out what each step would acomplish. 
# renamed the row_index to matric_sub_array_index as to now get confused about what was being accessed
# in addition there was variable shadowing occuring within the each method with the new_row variable, returned to algorithm to rename
# attempting again with example one: success
# attempting other examples: Success!!!

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]




