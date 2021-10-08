=begin
# ------------------- Problem ---------------------
march the rotation right ward rotating the full number then keeping the first number in place and rotating the rest and so on and so forth
# ------------------- Examples --------------------
one example has _ inbetween the numbers but ruby also sees this as regular numbers so idk how this is gonna work we shall see

# ------------------- Data ------------------------
using arrays

# ------------------- Algorithm -------------------
i plan on using a loop maybe until to keep the lines clean
do it until counter = int.to_s.size
reasignign the int with the rotat right most using the int as int and count as targ

def max rotate
count = 0
until count == int.to_s.size - 1
  int = method inputs
  count += 1
end
int
end

# ------------------- Code -----------------------

=end

def rotate_array arr
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(int, targ)
  digits = int.digits.reverse
  arr = digits[-targ..-1]
  digits[-targ..-1] = rotate_array(arr)
  digits.join.to_i
end

def max_rotation(int)
  count = int.to_s.size
  until count == 0
    int = rotate_rightmost_digits(int, count)
    count -= 1
  end
  int
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845