=begin
# ------------------- Problem ---------------------
Write a method that takes on argument, a positive integer, and returns
a list of the digits in the number

# ------------------- Examples --------------------
puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true

# ------------------- Data ------------------------
return an array of the brokent up digits

# ------------------- Algorithm -------------------
Take the argument and return an array of the digits using .digits

# ------------------- Storm -----------------------

=end

def digit_list(integer)
  integer.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true
