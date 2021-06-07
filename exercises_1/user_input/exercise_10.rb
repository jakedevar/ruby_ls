#exercise_10.rb

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end
sum = nil
loop do 
  break if sum == true
  puts ">> Please enter a positive or negative interger:"
  int_1 = gets.chomp
  puts ">> Please enter a positive or negative interger:"
  int_2 = gets.chomp
  sum = int_1 + int_2
  break if sum == true
end 