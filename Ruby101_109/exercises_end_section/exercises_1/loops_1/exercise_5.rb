# exercise_5.rb

numbers = []

loop do
  x = numbers.length
  break if x == 5
  puts 'Enter any number:'
  input = gets.chomp.to_i
  numbers.unshift(input)
end

p numbers

=begin
 numbers = []

 loop do
  puts 'Enter any number:'
  input - gets.chomp.to_i

  numbers.push(input)
  break if numbers.size == 5
 end
 puts numbers
=end
