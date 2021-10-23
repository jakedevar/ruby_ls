=begin
# ------------------- Problem ---------------------

# ------------------- Examples --------------------

# ------------------- Data ------------------------

# ------------------- Algorithm -------------------

# ------------------- Code -----------------------

=end

def comp(arr1, arr2)
  return false if (arr1.nil? || arr2.nil?) || arr1.length != arr2.length
  arr1.sort.each_with_index do |n, i|
    return false if n**2 != arr2.sort[i]
  end
  true
end

p comp([121, 144, 19, 161, 19, 144, 19, 11], [121, 14641, 20736, 361, 25921, 361, 20736, 361]) #== true

p comp([121, 144, 19, 161, 19, 144, 19, 11],
       [132, 14641, 20736, 361, 25921, 361, 20736, 361]) == false

p comp(nil, [1, 2, 3]) == false

p comp([1, 2], []) == false

p comp([1, 2], [1, 4, 4]) == false
