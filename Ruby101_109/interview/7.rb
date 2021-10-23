=begin
------------------- Problem ---------------------
given an array of integers adn a target number return an array with the two indexes that represent two numbers in the array that add
up to the target number
you may not use the same number twice

------------------- Examples --------------------
given

------------------- Data ------------------------
arrays

------------------- Algorithm -------------------
iterate through the array twice with each with index
i am going to next if the index is the same as the index 1
return [ind1, ind2].sort if dig + dig == target

------------------- Code ------------------------
=end

def two_sum(arr, targ)
  arr.each_with_index do |dig1, ind1|
    arr.each_with_index do |dig2, ind2|
      next if ind1 == ind2
      return [ind1, ind2].sort if dig1 + dig2 == targ
    end
  end
end

p two_sum([2, 11, 7, 15], 9) == [0, 2]
p two_sum([3, 2, 4], 6) == [1, 2]
p two_sum([3, 3], 6) == [0, 1]
