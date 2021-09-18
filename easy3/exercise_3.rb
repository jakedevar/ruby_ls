puts 'Please write a word or sentance'
input = gets.chomp

#char_count = input.chars.delete_if {|n| n == ' '}.count
char_count = input.delete(' ').size

puts "There are #{char_count} characters in '#{input}'"