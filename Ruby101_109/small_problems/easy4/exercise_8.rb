#exercise_8.rb
CONVERT = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9 }
=begin
def string_to_signed_integer(string)
  value = nil
  if string.include?('-')  
    value = string.chars.delete_if { |ele| ele == '-'}
  elsif string.include?('+')
    value = string.chars.delete_if { |ele| ele == '+'}
  else
    value = string.chars
  end
  digits = value.map { |char| CONVERT[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  if string.chars[0] == '-' 
    return -value
  else 
    value
  end
  
end
=end

def string_to_integer(string)
  digits = string.chars.map { |char| CONVERT[char] }

  value = 0
  digits.each { |digit| value = 10 * value + digit }
  value
  
end

def string_to_signed_integer(string)
  case string[0]
  when '-' then -string_to_integer(string[1..-1])
  when '+' then string_to_integer(string[1..-1])
  else string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

#LS solution how elegant 
#Note to self. I have realized that I will not be good from the get go this is going to take work and it dosent mean I am dumb simply because
#I didnt get a solution like below the first time I did it.
