#exercise_9.rb

number_a = 0
number_b = 0

loop do
  p number_a += rand(2)
  p number_b += rand(2)
  next if number_a != 5 && number_b != 5
  puts "5 was reached!"
  break
  
end

=begin
  #one in the comments I thought was clever

  number_a = 0
number_b = 0

loop do 
  number_a += rand (2)
  number_b += rand(2)
  next if [number_a, number-b].max < 5
  puts "5 was reached!"
  break
end
=end
#LS solution 

number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next unless number_a == 5 || number_b == 5

  puts '5 was reached!'
  break
end