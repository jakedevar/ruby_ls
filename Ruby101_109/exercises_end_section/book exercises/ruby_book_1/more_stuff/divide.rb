# divide.rb

def divide(number, divisor)
  answer = number / divisor
rescue ZeroDivisionError => e
  puts e.message
end

puts divide(16, 4)
puts divide(4, 0)
puts divide(14, 7)
