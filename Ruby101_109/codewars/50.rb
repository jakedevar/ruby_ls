=begin
# ------------------- Problem ---------------------
find the index in which the sum of the partitioned sides from said index equals each other ommiting the paritioned number
return -1 if that does not exist
# ------------------- Examples --------------------

# ------------------- Data ------------------------
array obvi

# ------------------- Algorithm -------------------
from 0...arr size each do
  return n if one of the sides sum is equal the sum of the other side

  -1

# ------------------- Code -----------------------

=end

def find_even_index(arr)
  (0...arr.size).each do |n|
    return n if arr[0...n].sum == arr[(n + 1)..-1].sum
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3

p find_even_index([1, 100, 50, -51, 1, 1]) == 1

p find_even_index([1, 2, 3, 4, 5, 6]) == -1

p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3

p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0

p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6

p find_even_index(Array(1..100)) == -1

p find_even_index([0, 0, 0, 0, 0]) == 0

p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

p find_even_index(Array(-100..-1)) == -1
