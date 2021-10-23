# exercise_10.rb

# def sum_square_difference(n)
#   arr = (1..n).to_a
#   sq_arr = arr.map {|ele| ele ** 2}
#   return (arr.sum ** 2) - sq_arr.sum
# end
# ls solution below though i liked mine fine

def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) do |value|
    sum += value
    sum_of_squares += value**2
  end

  sum**2 - sum_of_squares
end

p sum_square_difference(3) == 22
#-> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
