# exercise_9.rb

# def multiply_all_pairs(arr1, arr2)
#   result = []
#   arr1.each do |num|
#     arr2.each do |n|
#       result << (num * n)
#     end
#   end
#   result.sort
# end
# lol ls solution was litterally my soltution
# though the shorter solution was litteraly what I was trying to figure out before I tried the other X()
# oh well now I know how it works yay!!

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map { |x, n| x * n }.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) #== [2, 4, 4, 6, 8, 8, 12, 16]
