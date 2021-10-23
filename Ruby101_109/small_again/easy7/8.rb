=begin
# ------------------- Problem ---------------------
multiply the pairs of numbers together

# ------------------- Examples --------------------

# ------------------- Data ------------------------
an array

# ------------------- Algorithm -------------------
zip and multiply the two numbers

# ------------------- Code -----------------------

=end
# def multiply_list(arr1, arr2)
#   arr1.map.with_index {|ele, i| ele * arr2[i]}
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |pair| pair.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]
