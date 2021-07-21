# def interleave(arr1, arr2)
#   hash = {}
#   arr1.each_index do |n|
#     hash[arr1[n]] = arr2[n]
#   end
#   hash.to_a.flatten
# end
# def interleave(a1, a2)
#   a1.zip(a2).flatten  
# end
def interleave(a1, a2)
  new_arr = []
  a1.each_with_index do |item, index|
    new_arr << item << a2[index]
  end
  new_arr
end


p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']