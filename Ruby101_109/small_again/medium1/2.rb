=begin
# ------------------- Problem ---------------------
write a method that uses the method from the previous problem to rotate the last target numbers worth of the number 

# ------------------- Examples --------------------


# ------------------- Data ------------------------
arrays!!

# ------------------- Algorithm -------------------
write the method so that the arr is equal the array from the target number to -1
then pass that to the method written and say that the amount of that array is equal to that return value

def method with the integer and target number
  digits = targ number.digits.reverse
  set arr = digits[-targ..-1]

  digits[-targ. -1] = method return arr
  digits

# ------------------- Code -----------------------

=end

def rotate_array arr
  arr[1..-1] + [arr[0]]
end

# def rotate_rightmost_digits(int, targ)
#   digits = int.digits.reverse
#   arr = digits[-targ..-1]
#   digits[-targ..-1] = rotate_array(arr)
#   digits.join.to_i
# end
# only difference is they used the chars which was smart because i didnt think about how it would have to go to chars anyway but still awesome job man!!! you making progress!!!!
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end


p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917