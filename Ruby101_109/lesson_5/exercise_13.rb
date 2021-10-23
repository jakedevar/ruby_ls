# exercise_13.rb
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

p arr.sort_by do |sub_arr, sub_arr1|
  sub_arr1 <=> sub_arr
end

# LS solution i gave up im feeling down on myself a bit
arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end
# => [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
