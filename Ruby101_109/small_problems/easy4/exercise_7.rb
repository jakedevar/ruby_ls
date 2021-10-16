#exercise_7.rb
=begin
CONVERT = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }


def string_to_integer(string)
  digits = string.chars.map { |char| CONVERT[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
  
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570
=end

def hexadecimal_to_integer(hex)

hexadecimal_to_integer('4D9f') == 19871