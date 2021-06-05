#exercise_7.rb

numbers = [7 , 9, 13, 25, 18]

until numbers.size == 0
  puts numbers.shift
end

=begin
#LS solution

count = 0
until count == numbers.size
  puts numbers[count]
  count += 1
end
=end