#exercise_2.rb

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

# def rotate_rightmost_digits(int, quantity)
#   to_arr = int.to_s.chars
#   slice = to_arr[-quantity..-1]
#   home = to_arr[0..(-quantity + -1)] + rotate_array(slice)
#   home.flatten.join.to_i
# end

# so mine was actually right! and it was pretty darn close to the actual solutoin ahaha but still liked the LS solutoin alot
def rotate_rightmost_digits(int, n)
  all_digits = int.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917