#exercise_9.rb resort and do each sub array in decending order 
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
arr.map! do |sub_array|
  sub_array.sort do |a,b|
    b <=> a
  end
end

p arr

#LS solution NAILED IT!!!
arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end
# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]