# exercise_7.rb
=begin
def oddities(arr)
  new_arr = []
  arr.each_index do |index|
    new_arr << arr[index] if index.even?
  end
  new_arr
end

def oddities(arr)
  new_arr = []
  counter = 0
  loop do
    new_arr << arr[counter] if arr[counter] != nil
    counter += 2
    break if counter >= arr.size
  end
  new_arr
end
=end

def oddities(arr)
  new_arr = []
  count = 0
  loop do
    next if count.odd?
    new_arr << arr[count]
    count += 1
    break if count == arr.size
  end
end

p oddities([2, 3, 4, 5, 6]) #== [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
