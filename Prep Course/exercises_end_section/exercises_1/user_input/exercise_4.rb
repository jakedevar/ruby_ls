#exercise_4.rb

puts "do you want me to print something? y/n"
input = gets.chomp.to_s

loop do
  if input == 'n' || input == 'N'
    puts " "
    break 
  elsif ((input != 'y' || input != 'n') || (input != 'Y' || input != 'N'))
    puts "Error: incorrect input please type (Y/N)"
    input = gets.chomp.to_s
  end
  break if input == 'y' || input == 'Y'
  puts "somthing"
end

=begin
#LS solution

choice = nil
loop do
  puts '>> do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == y