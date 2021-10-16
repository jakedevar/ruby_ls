=begin
# ------------------- Problem ---------------------
sum the combinations of each 

# ------------------- Examples --------------------


# ------------------- Data ------------------------
arrays

# ------------------- Algorithm -------------------
the first thing that comes to mind sounds too complex for somereason but here it goes 
create a new arr above iterator
nvm i thought of a simpler way
untill counter == arr.length
sum += 
pop
increase
# ------------------- Code -----------------------

=end
# def sum_of_sums arr
#   sum = 0
#   a = arr.dup
#   counter = 0
#   until counter == arr.length
#     sum += a.sum
#     a.pop
#     counter += 1
#   end
#   sum
# end

def sum_of_sums(arr)
  sum_total = 0
  0.upto(arr.size) do |i|
    sum_total += arr[0, i].sum
  end
  sum_total
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35