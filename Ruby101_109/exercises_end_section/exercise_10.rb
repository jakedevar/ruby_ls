# exercise_10.rb

=begin
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  sum = nil
  int_1 = nil
  int_2 = nil
  loop do
    puts ">> Please enter a positive or negative interger:"
    int_1 = gets.chomp
    puts ">> Please enter a positive or negative interger:"
    int_2 = gets.chomp
    sum = int_1 + int_2
    puts "#{int_1} + #{int_2} = #{sum}"
  end
  break if sum == true
end

I am rushing through because I am going to work in a few mintues and this is the
last exercise that I have to do. It is clear to me that I need to spend more time
  on this subject and that I will most likley do this whole exercise block again
    after I read up more on things like scope and also when my brain is feeling more fresh
=end
def valid_number?(number_string)
  numer_string.to_i.to_s == number_string && number_string.to_i != 0
end

def read_number
  loop do
    puts '>> Please enter a positive or negative interger:'
    number = gets.chomp
    return number.to_i if valid_number?(number)
    puts '>> Invalid input. Only non-zero intergers are allowed.'
  end
end

first_number = nil
second_number = nil

loop do
  first_number = read_number
  second_number = read_number
  break if first_number * second_number < 0
  puts '>> Sorry. One interger must be positive. one must be negative'
  puts '>> Please start over.'
end

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"
