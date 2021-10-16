puts 'What is the bill?'
total_input = gets.chomp.to_f
puts 'What is the tip percentage? (enter as a whole number)'
tip_percent = gets.chomp.to_f

tip_calc = (total_input * (tip_percent * 0.01)).round(2)

puts "The tip is $#{tip_calc}"
puts "The total is $#{total_input + tip_calc}"