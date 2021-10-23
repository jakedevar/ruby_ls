=begin
# ------------------- Problem ---------------------
find the maximum number you can obtain by deleting just one digit
input is a digit
output is also a digit

# ------------------- Examples --------------------

# ------------------- Data ------------------------
an array given by digits

# ------------------- Algorithm -------------------
def delte_digits int
  var = int to arr broken up
  var find index of min
  gsub index of with ''
  revers var then join to i
end

# ------------------- Storm -----------------------

=end

# def delete_digit int
#   dig = int.digits
#   i = dig.min
#   dig.join.sub(/#{i}/, '').reverse.to_i
# end

# def delete_digit(int)
#   char = int.to_s.chars
#   i = char.index(char.min)
#   char.delete_at(i)
#   char.join.to_i
# end

# def delete_digit(int)
#   digits = int.to_s.chars
#   (0...digits.size).map { |idx| (digits[0...idx] + digits[(idx + 1)..-1]).join.to_i}.max
# end

def delete_digit(int)
  (s = int.to_s.chars).combination(s.size - 1).max.join.to_i
end

p delete_digit(152) #== 52

p delete_digit(1001) == 101

p delete_digit(10) == 1
