# #exercise_7.rb
# def helper(arr1, arr2, result)
#   arr1.zip(arr2) do |a, b|
#     if (a != nil && b != nil) && a < b
#       result << a
#       result << b
#     elsif (a != nil && b != nil) && a > b
#       result << b
#       result << a
#     else
#       if a == nil
#         result << b
#       else
#         result << a
#       end
#     end
#   end
#   result
# end

# def merge(arr1, arr2)
#   result = []
#   helper(arr1, arr2, result)

#   result
# end
# here is LS soltuion
def merge(array1, array2)
  index2 = 0
  result = []

  array1.each do |value|
    while index2 < array2.size && array2[index2] <= value
      result << array2[index2]
      index2 += 1
    end
    result << value
  end

  result.concat(array2[index2..-1])
end
# I just came back from vacation and the subsequent vacation mode for the 5 days after getting back this is my first day back so I am not mad that I didnt get this one
# I didnt even do a pedac on it because i was still waking up and it looked easy from the outset lol it was not haha

# p merge([1, 5, 9], [2, 6, 8]) #== [1, 2, 5, 6, 8, 9]
# p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) #== [1, 4, 5]
# p merge([1, 4, 5], []) #== [1, 4, 5]
