#exercise_4.rb
require 'time'

puts 'What is your age?'
age = gets.chomp.to_i
puts 'What age would you like to retire?'
retirement = gets.chomp.to_i
current_year = 2021

puts "It's 2021. You will retire in #{Time.now.year + (
  retirement - age)}"
