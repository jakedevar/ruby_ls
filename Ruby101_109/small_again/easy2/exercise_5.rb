puts 'Whats your name?'
input = gets.chomp

if input.include?('!')
  input = input.chop
  puts "WHY ARE WE YELLING #{input.upcase}?"
else
  puts "What up #{input}"
end

