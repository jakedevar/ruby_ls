=begin
# ------------------- Problem ---------------------
find the minimum number that can be inserted into the list of int's in order for the sum to be considerd the closest prime number

# ------------------- Examples --------------------
no letters in list or special characters jsut whole numbers
numbers can repeat

# ------------------- Data ------------------------
using a loop for this should work perfectly

# ------------------- Algorithm -------------------
init a counter
loop do
  return counter if Prime (arr.sumprime)
  counter += 1
end

# ------------------- Storm -----------------------

=end
require 'prime'
# def minimum_number arr
#   counter = 0
#   loop do
#     return counter if Prime.prime?((counter + arr.sum))
#     counter += 1
#   end
# end

def minimum_number(arr)
  0.step.find { |i| (arr + [i]).sum.prime? }
end

p minimum_number([3, 1, 2]) == 1

p minimum_number([5, 2]) == 0

p minimum_number([1, 1, 1]) == 0

p minimum_number([2, 12, 8, 4, 6]) == 5

p minimum_number([50, 39, 49, 6, 17, 28]) == 2
