#exercise_8.rb
#Write a program that asks the user to enter an integer 
#greater than 0, then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
puts 'please enter a number greater than 0'
number = gets.chomp.to_i
puts 'Do you want to know the sum or product of all numbers between 1 and that number? (input s for sum and p for product)'
input = gets.chomp.downcase
if input == 's'
p (1..number).sum
elsif input == 'p'
  p (1..number).inject(:*)
else
  puts 'please enter a valid number'
end
