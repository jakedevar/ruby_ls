=begin
puts 'Enter the first number'
num1 = gets.chomp.to_i
puts 'Enter the second number'
num2 = gets.chomp.to_i
puts 'Enter the third number'
num3 = gets.chomp.to_i
puts 'Enter the fourth number'
num4 = gets.chomp.to_i
puts 'Enter the fifth number'
num5 = gets.chomp.to_i
puts 'Enter the sixth number'
num6 = gets.chomp.to_i

arr = []
arr.push(num1, num2, num3, num4, num5)

if arr.include?(num6)
  puts 'the sixth number is already in the array'
else
  puts 'the sixth number does not appear in the arr'
end

#best solution I saw in the comments
numbers = []

['1st', '2nd', '3rd', '4th', '5th', 'last'].each do |n|
  puts "==> Enter the #{n} number:";
  numbers << gets.chomp.to_i
end

if numbers.first(5).include?(numbers.last)
  puts "The number #{numbers.last} appears in #{numbers.first(5)}."
else
  puts "The number #{numbers.last} does not appear in #{numbers.first(5)}."
end

#LS solution below
numbers = []

puts "Enter the 1st number:"
numbers << gets.chomp.to_i
puts "Enter the 2nd number:"
numbers << gets.chomp.to_i
puts "Enter the 3rd number:"
numbers << gets.chomp.to_i
puts "Enter the 4th number:"
numbers << gets.chomp.to_i
puts "Enter the 5th number:"
numbers << gets.chomp.to_i
puts "Enter the last number:"
last_number = gets.chomp.to_i

if numbers.include? last_number
  puts "The number #{last_number} appears in #{numbers}."
else
  puts "The number #{last_number} does not appear in #{numbers}."
end
=end
arr = []
%w(1st 2nd 3rd 4th 5th 6th).each do |nth|
  puts "please enter the #{nth} number that is greater than 0"
  arr << gets.chomp.to_i
end

if arr.first(5).include?(arr[-1])
  puts "yes it is "
else
  puts ' it is not'
end
