#exercise_2.rb

loop do
  puts 'This is the outer loop'
  
  loop do
    puts 'This is the inner loop'
    break
  end
  break
end

puts "this is outside all loops"