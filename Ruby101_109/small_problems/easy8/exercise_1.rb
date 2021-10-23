def sum_of_sums(arr)
  arr_sum = []
  result = []
  arr.each do |n|
    arr_sum << n
    result << (arr_sum.sum)
  end
  result.sum
end
# WOW HOLY CRAP I THOUGHT I WAS A GONER ON THIS ONE
# I was just starring at the screen like htf am i going to get this done? as soon as i started pedacing a solution just like flashed into my mind like
# man these parentheses really look like arrays and then it flashed into my mind to add to an array and then sum it.

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35
