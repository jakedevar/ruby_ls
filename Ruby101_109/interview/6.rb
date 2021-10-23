=begin
------------------- Problem ---------------------
find the minimum length of a sub array from the array arg that's sum is greater than the target number

------------------- Examples --------------------
given

------------------- Data ------------------------
arrays

------------------- Algorithm -------------------
initializing a result array
then calling each_index do on arr
  calling each index do on arr again
    res << [arr[i..i]] if arr[i..i].sum > targ
  end
end
res.compact.min_by sub length
retrun 0 if none is found

------------------- Code ------------------------
=end

def minSubLength(arr, targ)
  res = []
  arr.each_index do |ind1|
    arr.each_index do |ind2|
      res << arr[ind1..ind2] if arr[ind1..ind2].sum >= targ && ind1 <= ind2
    end
  end
  return 0 if res == []
  res.min_by { |sub| sub.length }.size
end

p minSubLength([2, 3, 1, 2, 4, 3], 7) == 2
p minSubLength([1, 10, 5, 2, 7], 9) == 1
p minSubLength([1, 11, 100, 1, 0, 200, 3, 2, 1, 250], 280) == 4
p minSubLength([1, 2, 4], 8) == 0
