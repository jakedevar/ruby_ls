# exercise_3.rb

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# def transpose(array)

#   first_0, first_1, first_2 = array[0][0], array[0][1], array[0][2]
#   second_0, second_1, second_2 = array[1][0], array[1][1], array[1][2]
#   third_0, third_1, third_2 = array[2][0], array[2][1], array[2][2]
#   [[first_0,second_0, third_0], [first_1, second_1, third_1], [first_2, second_2, third_2]]
# end

def transpose(matrix)
  result = []
  (0..2).each do |column_index|
    new_row = (0..2).map { |row_index| matrix[row_index][column_index] }
    result << new_row
  end
  result
end

p new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]
# there is probably an easier way to do this but I still got it done!!!!
