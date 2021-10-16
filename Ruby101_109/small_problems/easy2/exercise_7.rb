#exercise_7.rb
#print all even numbers from 1..99 to console
puts (1..99).select(&:even?)

#LS soltuion 
value = 1
while value <= 99
  puts value if value.even?
  value += 1
end
# I learned from the last one lol I love efficency!!!