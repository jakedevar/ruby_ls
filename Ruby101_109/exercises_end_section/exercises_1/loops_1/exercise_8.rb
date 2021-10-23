# exercise_8.rb
=begin
number = 0

until number == 10
  number += 1
  next puts number if number.even?
end

#this is a solution I thought was brilliant in the comments
number = 0

until number == 10
  number += 1.next #Using next on an integer returns the Integer equal to int + 1.
  puts number
end
=end
number = 0

until number == 10
  number += 1
  next if number.odd?
  puts number
end
