puts '>> Please enter an integer greater than 0:'
integer_input = gets.chomp.to_i
puts ">> Enter 's' to compute the sum, 'p' to compute the product."
string_input = gets.chomp

sum = (1..integer_input).to_a.sum
product = (1..integer_input).to_a.reduce(:*)

puts "The sum of the integers between 1 and #{integer_input} is #{sum}." if string_input == 's'
puts "The product of the integers between 1 and #{integer_input} is #{product}." if string_input == 'p'
