#exercise_2.rb
=begin
build a program that asks for length and width of a room in meters
and then have the program display the area of the room in btoh 
square meters and square feet

puts a question for both and then gets chomp it brotha
use both inputs as arguments to a method
store equation in a var and then puts var. do math inthe string interpolation
=end

puts "Enter the length of the room in meters:"
length = gets.chomp.to_i
puts "Enter the width of the room in meters:"
width = gets.chomp.to_i

def room_calc(l, w)
  sq_meters = l * w
  puts "The area of the room is #{sq_meters} square\
  meters (#{(sq_meters * 10.7639).round(2)} square feet)"
end

room_calc(length, width)