#exercise_6.rb
=begin
for i in 1..99 do 
  if i.odd?
    p i 
  end
end

#LS solution though mine is still right 
value = 1
while value <= 99
  puts value
  value += 2
end
=end
#further exploratoin
#(1..99).each { |num| p num if num.odd? }

#even cleaner on this one though
puts (1..99).select(&:odd?)