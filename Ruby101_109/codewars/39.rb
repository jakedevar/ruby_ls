=begin
# ------------------- Problem ---------------------
find the greatest product of 5 consecutive numbers in a string
input a string 
output a number 
they made this one nice with that input 

# ------------------- Examples --------------------
no negatives 
no single zeros 
some may not be even for 5's 
# ------------------- Data ------------------------
an arry will do for this oen 

# ------------------- Algorithm -------------------
def greatest product str
  str chars
  each cons 5 on str chars 
  map each ele to i
  map .inject.max
end

# ------------------- Storm -----------------------

=end

def greatest_product str
  str.chars.map(&:to_i).each_cons(5).map {|arr| arr.inject(:*)}.max
end 

p greatest_product("123834539327238239583") == 3240

p greatest_product("395831238345393272382") == 3240

p greatest_product("92494737828244222221111111532909999") == 5292

p greatest_product("92494737828244222221111111532909999") == 5292

p greatest_product("02494037820244202221011110532909999") == 0