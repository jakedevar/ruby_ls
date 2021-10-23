# exercise_8.rb

# def sequence(count, increment)
#   arr = []
#   count.times do |x|

#     arr << (increment * (x + 1))
#   end
#   arr
# end

def sequence(count, increment)
  (1..count).map { |value| value * increment }
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []
