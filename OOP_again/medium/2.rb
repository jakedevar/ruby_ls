# algo: 1. init array 2. create getter for array with fixed array
# algo: 1. create a []= method 2. to_s

# class FixedArray
#   attr_accessor :fixed_array
#   def initialize(n)
#     @fixed_array = [nil] * n
#   end

#   def [] ind 
#     raise IndexError if ind > fixed_array.size - 1
#     fixed_array[ind]
#   end

#   def []= ind, ele 
#     raise IndexError if ind > fixed_array.size - 1
#     self.fixed_array[ind] = ele
#   end

#   def to_s
#     "#{fixed_array}"
#   end

#   def to_a
#     fixed_array
#   end
# end

class FixedArray
  attr_accessor :fixed_array
  def initialize(n)
    @fixed_array = Array.new(n)
  end

  def [] ind 
    fixed_array.fetch(ind)
  end

  def []= ind, ele 
    self[ind]
    self.fixed_array[ind] = ele
  end

  def to_s
    to_a.to_s 
  end

  def to_a
    fixed_array.clone
  end
end

fixed_array = FixedArray.new(5)
puts fixed_array[3] == nil
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end