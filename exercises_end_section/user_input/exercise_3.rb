#exercise_3.rb

puts "do you want me to print something? y/n"
input = gets.chomp.to_s

if input == 'y'
  puts "somthing"
elsif input == 'n'
end

=begin
#LS solution

puts '>> do you want me to print something (y/n)'
choice = gets.chomp
puts 'something' if choice == 'y'


