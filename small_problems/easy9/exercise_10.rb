#exercise_10.rb

# def buy_fruit(arr)
#   new_arr = []
#   arr.each do |sub_arr|
#     sub_arr[1].times do |x|
#       new_arr << sub_arr[0]
#     end
#   end
#   new_arr
# end

# def buy_fruit(arr)
#   new_arr = []
#   arr.each do |item|
#   fruit, quantity = item[0], item[1]
#   quantity.times {new_arr << fruit}
#   end
#   new_arr
# end

def buy_fruit(arr)
  arr.map { |fruit, quantity| [fruit] * quantity}.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]