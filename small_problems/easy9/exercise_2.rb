#exercise_2.rb

def twice(int)
  arr1 = []
  arr2 = []
  arr = int.digits
  arr.each_with_index do |item, index|
    index < arr.length / 2 ? arr1 << item : arr2 << item
  end
  # if arr1 != arr2
  #   ((arr1 << arr2).flatten.join.to_i * 2)
  # else 
  #   (arr1 << arr2).flatten.join.to_i
  # end
  arr1
end  

p twice(37) #== 74
p twice(44) #== 44
p twice(334433) #== 668866
p twice(444) #== 888
p twice(107) #== 214
p twice(103103) #== 103103
p twice(3333) #== 3333
p twice(7676) #== 7676
p twice(123_456_789_123_456_789) #== 123_456_789_123_456_789
p twice(5) #== 10