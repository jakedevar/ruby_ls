#exercise_3.rb
puts 'what is the bill?'
bill = gets.chomp.to_f
puts 'what is the tip percentage?'
percentage = (gets.chomp.to_f * 0.01) + 1
total = bill * percentage
puts "The tip is $#{(total - bill).round.to_f} and the total is $#{total.round.to_f}"