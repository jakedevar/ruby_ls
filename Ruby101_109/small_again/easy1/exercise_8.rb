=begin
# ------------------- Problem ---------------------

# ------------------- Examples --------------------

# ------------------- Data ------------------------

# ------------------- Algorithm -------------------
init a sum var to 0
take array and each it sum += ele
sum / arr.size

# ------------------- Storm -----------------------

=end

def average(arr)
  sum = arr.reduce(:+)
  sum / arr.size
end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
