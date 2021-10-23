=begin
# ------------------- Problem ---------------------
return the key whos rank matches their honor
if not complete match then whoever is the min

# ------------------- Examples --------------------

# ------------------- Data ------------------------
arr

# ------------------- Algorithm -------------------
set a keys arr
res is an arr
iterate throuh keys and subtract the key from the value and add to the array both must be abs'd
fiind the index of the min and use it to grab the key from keys

set index value to arr.max
set min arr to goign to use each with object to append the final value of k-v to and then get the min from there
i = j if i is less than value return i
max = arr.max
i = 0

# ------------------- Code -----------------------

=end

# def nexus hash
#   keys = hash.keys
#   res = []
#   keys.each {|k| i = hash[k] - k ; res << i.abs}
#   n = res.index(res.min)
#   keys[n]
# end
# passed all the tests but not the random tests coming back tmmrw

# def nexus hash
#   min_arr = hash.each_with_object([]) do |k, a|
#     a << (k[0] - k[1]).abs
#   end
#   max = min_arr.max
#   i = 0
#   min_arr.each_with_index { |ele, j| i = j if ele < max; max = ele if ele < max }
#   hash.keys[i]
# end
# I truly dont understand wtf the array brackets are doing inside this mofo but here is the refactored soltuoin
# again this solution works but it did no pass that same random test. I knew there was nothing more  icould do so threw in the towl

def nexus(hsh)
  hsh.min_by { |k, v| [(k - v).abs, k] }[0]
end

p nexus({ 1 => 3, 3 => 3, 5 => 1 }) #== 3

p nexus({ 1 => 10, 2 => 6, 3 => 4, 5 => 1 }) #== 3

p nexus({ 1 => 10, 2 => 3, 3 => 4, 5 => 1 }) #== 2
