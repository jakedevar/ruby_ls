# exercise_8.rb

def average_finder(int_arr)
  int_arr.sum / int_arr.size
end

p average_finder([1, 3, 5, 6, 7, 8, 89, 10])

# this was the ls solution
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end
# though mind was still right and techincally faster. I am trying to beat Riad mohhommad in the comments section in effeciency
