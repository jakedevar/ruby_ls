#exercise_5.rb
=begin
x = nil 

puts "How many output lines do you want? Enter a number >= 3:"

loop do 
  x = gets.chomp.to_i
if x >= 3
  x.times { puts "Launch School is the best!" }
  break
else
  puts "That's not enough lines try again"
  end
end
=end

#LS solution
number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end