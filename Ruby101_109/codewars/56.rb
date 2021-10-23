=begin
# ------------------- Problem ---------------------
create the group by or tally method and return as such in order of the numbers

# ------------------- Examples --------------------
return nil if nil or empty

# ------------------- Data ------------------------
an array to hash obvi

# ------------------- Algorithm -------------------
create the unused hash
uniq the arr and save it maybe but i think i can do it at once
  use that to iterate as the hash keys and then use the count method on the arr as the values

# ------------------- Code -----------------------

=end

# def group_and_count arr1
#   return nil if arr1 == nil or arr1.empty?
#   hash = Hash.new(0)
#   arr1.uniq.each {|ele| hash[ele] = arr1.count(ele)}
#   hash
# end
# ok so this solution litteraly works for all the test cases but when i put it into codewars it sayd there is not count method for the array which is bullshit
# i even used the test case they were using, this is for both random and regular test cases so I am just going to do this with a counter instead so dont go thinking
# i got this shit wrong because i didnt

# def group_and_count arr
#   return nil if arr == nil or arr.empty?
#   hash = Hash.new(0)
#   count = 0
#   arr.uniq.each do |n|
#     arr.each do |i|
#       count += 1 if n == i
#     end
#     hash[n] = count
#     count = 0
#   end
#   hash
# end

# refactored solution

def group_and_count(arr1)
  return nil if arr1.nil? or arr1.empty?
  arr1.each_with_object(Hash.new(0)) { |k, h| h[k] += 1 }
end

p group_and_count([1, 1, 2, 2, 2, 3]) #== {1=>2, 2=>3, 3=>1}

p group_and_count([]).nil?

p group_and_count(nil).nil?

p group_and_count([1, 7, 5, -1]) == { 1 => 1, 7 => 1, 5 => 1, -1 => 1 }
