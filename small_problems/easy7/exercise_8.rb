#exercise_8.rb

# def multiply_list(arr1, arr2)
#   result = []
#   arr1.each_with_index do |ele, index|
#     result << (ele * arr2[index])
#   end
#   result
# end
#lol came up with this solution almost immediatly and it was even the ls solution as well. GOOD FOR ME YAAAAYYYYY!!!!!


def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |both| both.inject(:*)}
end

p multiply_list([3, 5, 7], [9, 10, 11]) #== [27, 50, 77]