def signed_integer_to_string(int)
  hash = {0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'}
  convert = int.digits.map {|digit| hash[digit]}.reverse if int >= 0
  convert = (int * -1).digits.map {|digit| hash[digit]}.reverse if int < 0
  if int > 0
    convert.unshift('+').join
  elsif int < 0
    convert.unshift('-').join
  else
    convert.join
  end
end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'