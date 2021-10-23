# exercise_5.rb

numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.map do |n|
  numbers.delete_if(n.even?)
end

p even_numbers

# I miss understood the question I thought we couldent change the source code
# also I gave up lol tired long day next time ill get em
=begin
#LS solution
numbers = [5, 2, 9, 6, 3, 1, 8]

even_numbers = numbers.select do |n|
  n.even?
end

p even_numbers
=end
