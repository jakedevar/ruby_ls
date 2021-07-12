#exercise_10.rb
=begin
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '-']

def signed_integer_to_string(string)
  if string < 0
    digits = (string * -1).digits.each { |char| DIGITS[char - 1] }
  elsif string > 0
    digits = string.digits.each { |char| DIGITS[char - 1] }
  else 
    digits = string.digits.each { |char| DIGITS[char]}
  end
  
  if string > 0
    digits.push(DIGITS[10]).join.reverse
  elsif string < 0
    digits.push(DIGITS[11]).join.reverse
  else
    digits.join
  end
end
=end

DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
=begin
def signed_integer_to_string(number)
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end
=end
THINGS =[0 , '+', '-']
def signed_integer_to_string(number)
  integer_to_string((THINGS[(number <=> 0)].to_i)number)
 
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'