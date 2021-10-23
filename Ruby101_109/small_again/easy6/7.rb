=begin
# ------------------- Problem ---------------------
return an array with the first half in a sub array and the second half the same
if length is odd then put the odd element in the first arr

# ------------------- Examples --------------------
a single element is given in which an empty array is given in the second part

# ------------------- Data ------------------------
arrays baby

# ------------------- Algorithm -------------------

# ------------------- Code -----------------------
=end

def halvsies(arr)
  part1 = arr[0..(arr.size / 2)] if arr.size.odd?
  part1 = arr[0..arr.size / 2 - 1] if arr.size.even?
  part2 = arr[(arr.size / 2 + 1)..-1] if arr.size.odd?
  part2 = arr[(arr.size / 2)..-1] if arr.size.even?
  res = [part1, part2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]
