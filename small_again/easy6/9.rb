=begin
# ------------------- Problem ---------------------
write an include method that return true or false of something is in the array

# ------------------- Examples --------------------


# ------------------- Data ------------------------
an array

# ------------------- Algorithm -------------------
use each true return number if ele == targ
false

# ------------------- Code -----------------------

=end

# def include?(arr, targ)
#   arr.each {|ele| return true if ele == targ}
#   false
# end

#lol thought i was smart with the last one ls showed me up
def include?(arr, targ)
  !!arr.find_index(targ)
end


p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false