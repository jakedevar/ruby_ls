#exercise_4.rb

# def reverse!(arr)
#   arr.each do |ele|
#     var_storage = ele
#     arr.delete(ele)
#     arr.unshift(var_storage)
#   end
# end
#i like my solution however after seeing the ls soution I realized that I maybe could not have done it another way it is important to understand
#how to write many different versions of the same thing.

def reverse!(arr)
  left_index = 0
  right_index = -1
  while left_index < arr.size / 2
    arr[left_index], arr[right_index] = arr[right_index], arr[left_index]
    left_index += 1
    right_index -= 1
  end
  arr
end

p list = [1,2,3,4]
p result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

p list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

p list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

p list = []
p reverse!(list) == [] # true
p list == [] # true