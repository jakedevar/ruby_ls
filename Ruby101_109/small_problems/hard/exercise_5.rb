=begin
==========================
         Problem
--------------------------
take a matrix and rotate it 90 degrees clockwise
as far as I am aware there is no restrictions on how i can do this i just 
need to do it however i can 

from last exercise look at how that was implemented so that I can maybe pull from that method 

input: a matrix, could be 3x3 could be 2x3, point is flip it 90 degrees
--------------------------
**Explicit Requirements**
--------------------------
-   Rules: take a given matrix and then turn to the right 
-  Inputs: a given matrix that may be 3x3 or 2x3
-  Output: a rotated matrix
--------------------------
**Clarifying Questions:**
--------------------------
1. I believe i can mutate the inputs 
2. it needs to print true three times 
3. no odd things it looks like so dont need to rescue for errors 

remember matrix's are just a collection of sub arrays, which must have the same number of colums and rows, on each columns, rows, 
--------------------------
**Implicit Requirements:**
--------------------------
just rotate the thing. though if you were to rotate a matrix 
4 times then it should be the exact same matrix as what was passed in.
--------------------------
Examples/Test Cases/Edge's
--------------------------
1  5  8
4  7  2
3  9  6

3  4  1
9  7  5
6  2  8


3  4  1
9  7  5

9  3
7  4
5  1

--------------------------
     Data Structure
--------------------------
an array of subarrays

the columns are just the individual elements and the rows are just the sub arrays 
--------------------------
       Algorithm
--------------------------
1. define the rotate method
2. define a counter set to 0, result array
3. use the array size call reverse each do on the array that many times
4. use the counter to append that element to the row array 
5. at the the end of the iteration append that array to the result array 
6. increase counter by 1 

  **??Helper Methods??**

--------------------------
          Code
--------------------------
=end

# def rotate90(matrix)
#   result = []
#   counter = 0
#   matrix[0].size.times do 
#     row_arr = []
#     matrix.reverse_each do |sub_arr|
#       row_arr << sub_arr[counter]
#     end
#     counter += 1
#     result << row_arr
#   end
#   result
# end

# LS solution 
def rotate90(matrix)
  result = []
  number_of_rows = matrix.size
  number_of_columns = matrix.first.size
  (0...number_of_columns).each do |column_index|
    new_row = (0...number_of_rows).map do |row_index|
      matrix[row_index][column_index]
    end
    result << new_row.reverse
  end
  result
end


matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2