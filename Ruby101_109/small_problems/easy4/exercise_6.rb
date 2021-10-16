#exercise_6.rb
=begin
def running_total(arr)
  total = 0
  arr.map { |x| x + total ; total += x}
end

#haha I was proud of the solution above and i also used PEDAC however LS solution is more concise. I see now how map will just evaluate the block as the new value
def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end
=end
def running_total(arr)
  arr.map  {|x| x.inject { |a, i| a + i}}
end


p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []