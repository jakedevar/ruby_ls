# exercise_8.rb
=begin
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
=end
# because shift is at the end of the code it will output every
# number in the array however it will also delete every number
# in the array after it is printed

# i was inccorect it out puts 1 and 3 and returns 3, 4
# i do not know why it does that

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
p numbers
# I believe 1, 2 will be returned and 1 2 will be outputed
# i was right but i dont know why i was right
