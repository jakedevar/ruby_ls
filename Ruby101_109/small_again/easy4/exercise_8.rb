def string_to_integer(string)
  hash = { '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6,
           '7' => 7, '8' => 8, '9' => 9 }
  convert = string.chars.map { |ele| hash[ele] }

  value = 0
  convert.each { |digit| value = 10 * value + digit }
  value
end

# def string_to_signed_integer(int)
#   if int[0] == '+' || int[0] == '-'
#     new_int = int[1, int.size]
#     if int[0] == '-'
#       -string_to_integer(new_int)
#     else
#       string_to_integer(new_int)
#     end
#   else
#     string_to_integer(int)
#   end
# end

def string_to_signed_integer(int)
  case int[0]
  when '-' then -string_to_integer(int[1..-1])
  when '+' then string_to_integer(int[1..-1])
  else string_to_integer(int)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100
