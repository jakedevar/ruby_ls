=begin
# ------------------- Problem ---------------------
return true if every item in array is an int or a float (with no decimals? wtf? it has to have a decimal to be a float)
and return true for an empty array
return false for every other input 

# ------------------- Examples --------------------
[1, 2, 3, 4, 5, 6, 7, 8]
[1.0, 2.0, 3.0]
[1.0, 2.0, 3.0, 4]
[]
['fuck off', 'ricky']

# ------------------- Data ------------------------


# ------------------- Algorithm -------------------


# ------------------- Code -----------------------

=end

def is_int_array(arr)
  arr.each { |ele| return false if ele != ele.to_i}
  true
end

p is_int_array([1, 2, 3, 4, 5, 6, 7, 8])
p is_int_array([1.0, 2.0, 3.0])
p is_int_array([1.0, 2.0, 3.0, 4])
p is_int_array([])
p is_int_array(['fuck off', 'ricky'])
