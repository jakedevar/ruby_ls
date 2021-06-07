#exercise_9.rb

number_of_lines = nil
loop do
  break if number_of_lines.to_s == 'q' 
  puts '>> How many output lines do you want? Enter a number >= 3 (Q to quit):'
  number_of_lines = gets.to_i
  
  if number_of_lines > 0
  while number_of_lines > 0
    puts 'Launch School is the best!'
    number_of_lines -= 1
  end
  else 
    puts ">> That's not enough lines."
  end
  
end 
