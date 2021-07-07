#exercise_9.rb

def sum(int)
  int.to_s.chars.map( { |char| char.to_i}).sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

#LS solution for the challenge which i completeted!!
def sum(int)
int.to_s.chars.map(&:to_i).reduce(:+)
end

#and yet lewis blows by me yet again for most compact code hahahaha
def sum(int)
  int.digits.sum
end