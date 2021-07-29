#exercise_3.rb

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(int, n)
  all_digits = int.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(int)
  new_arr = int.to_s.chars
  result = new_arr
  counter = 0
  loop do
  rotate_rightmost_digits(result, counter)
  counter += 1
  break if counter == (new_arr.length - 1)
  end
end

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845