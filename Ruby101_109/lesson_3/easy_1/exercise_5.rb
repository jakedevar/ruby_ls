# exercise_5.rb
# select 42 from a set of numbers
# the set of numbers is 10-100
# use a range in the solution
=begin
x = 10..100
if x.include?(42)
  puts 'yes'
end
=end

# ls solution
p (10..100).cover?(42)
