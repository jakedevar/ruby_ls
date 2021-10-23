=begin
# ------------------- Problem ---------------------
rotate the array without moddifying the origianl array

# ------------------- Examples --------------------

# ------------------- Data ------------------------
arrays lol

# ------------------- Algorithm -------------------
create a copy of the original array by adding to a new array and then fucking that up lol
this is easy except for the muttaing

# ------------------- Code -----------------------

=end
# def rotate_array arr
#   new_arr = []
#   arr.each {|x| new_arr << x}
#   new_arr << new_arr.shift
#   new_arr
# end
#  i did it right but this is the ls way. always good to learn something new

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true
