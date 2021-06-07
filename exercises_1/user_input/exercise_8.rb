#execise_8.rb
=begin
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end
numerator = nil
denominator = nil
loop do
  puts ">> Please enter the numerator:"
  numerator = gets.chomp.to_i
  valid_number?(numerator)
  puts "Please enter the denominator:"
  puts "please enter a valid interger"
  
  denominator = gets.chomp.to_f
  solution = numerator / denominator
  valid_number?(denominator)
  puts ">> #{numerator} / #{denominator} is #{solution}" 
  break if solution = true 
end
=end
#LS solution below I gave up and got it :'(
#I felt stuck but now seeing the solution I realize that
#I need to just calm down and solve it the only ways I know 
#how instead of believing there is a set way to do something
#also I was being extra and doing it .to_f  so that there
#would be an answer every time 
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil
loop do 
  puts '>> Please enter the numerator'
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts '>> Invalid input. Only intergers are allowed.'
end

denominator = nil
loop do
  puts '>> Please enter the denominator:'
  denominator = gets.chomp

  if denominator == '0'
    puts '>> Invalid input. A denominator of 0 is not allowed'
  else 
    break if valid_number?(denominator)
    puts ">> Invalid input. Only intergers are allowed."
  end
end

result = numerator.to_i / denominator.to_i
puts "#{numerator} / #{denominator} is #{result}"
