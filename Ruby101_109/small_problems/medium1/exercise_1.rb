# def rotate_array(arr)
#   x = arr[0]
#   arr << x
#   arr.shift
#   arr
# end

# shit didnt read the question all the way through I modified the og array and it said not to. This is the LS solution below
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end
# further expo

# def string_rotate(string)
#   new_new = string.chars
#   rotate_array(new_new).join
# end

# p string_rotate('from the top make it drop')

def num_rotate(num)
  new_new = num.digits.reverse
  p new_new
  rotate_array(new_new).join.to_i
end

p num_rotate(25555)

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# x == [1, 2, 3, 4]                 # => true
