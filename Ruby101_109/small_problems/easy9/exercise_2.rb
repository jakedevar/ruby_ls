# exercise_2.rb

# def twice(int)
#   arr1 = []
#   arr2 = []
#   arr = int.digits
#   arr.each_with_index do |item, index|
#     index < (arr.length / 2) ? arr1.unshift(item) : arr2.unshift(item)
#   end
#   if arr1 != arr2
#     ((arr2 << arr1).flatten.join.to_i) * 2
#   else
#     (arr2 << arr1).flatten.join.to_i
#   end
# end

def twice(int)
  string_number = int.to_s
  center = string_number.size / 2
  leftside = center.zero? ? '' : string_number[0..center - 1]
  rightside = string_number[center..-1]

  return int if leftside == rightside
  int * 2
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
