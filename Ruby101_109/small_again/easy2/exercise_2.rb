puts "Enter the length of the room in meters:"
length_input = gets.chomp.to_f
puts "Enter the width of the room in meters:"
width_input = gets.chomp.to_f

square_meters = length_input * width_input
square_feet = (square_meters * 10.7639).round(2)
puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."
