def integer_to_string(string)
  hash = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6',
           7 => '7', 8 => '8', 9 => '9' }
  convert = string.digits.map { |ele| hash[ele] }.join.reverse
end

p integer_to_string(4321) #== '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'
