#exercise_5.rb

def multisum(int)
  (1..int).select { |x| x % 3 == 0 || x % 5 == 0 }.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168
puts multisum(20)

#this one was actually the shortest solution I found in either the ls stuff or the comments section. 