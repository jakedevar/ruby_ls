# exercise_11.rb
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]

new_arr = []
arr.map do |sub_arr|
  sub_arr.select do |int|
    if int % 3 == 0
      new_arr << int
    end
  end
end

puts new_arr

# LS solution BANG ON!!!!
arr.map do |element|
  element.select do |num|
    num % 3 == 0
  end
end
# => [[], [3], [9], [15]]
