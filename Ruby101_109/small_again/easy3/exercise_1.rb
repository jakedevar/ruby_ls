puts "==> Enter the 1st number:"
input1 = gets.chomp.to_i
puts "==> Enter the 2nd number:"
input2 = gets.chomp.to_i
puts "==> Enter the 3rd number:"
input3 = gets.chomp.to_i
puts "==> Enter the 4th number:"
input4 = gets.chomp.to_i
puts "==> Enter the 5th number:"
input5 = gets.chomp.to_i
puts "==> Enter the last number:"
input6 = gets.chomp.to_i

arr = [input1, input2, input3, input4, input5]

if arr.include?(input6)
  puts "The number #{input6} appears in #{arr}."
else
  puts "The number #{input6} does not appear in #{arr}."
end
