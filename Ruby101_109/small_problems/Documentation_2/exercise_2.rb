# exercise_2.rb
require 'date'
# It should print -4712 because thats what it say it will do?
puts Date.civil # sort of right didnt add -01-01

# next should be 2016-4712 and then 01-01
puts Date.civil(2016)
# incorrect it prints 2016-01-01

# I think this one will print 2016-05-01
puts Date.civil(2016, 5)
# correct

# 2016-05-13
puts Date.civil(2016, 5, 13)
# correct

puts Date.civil(1751, 5, 13, Date::ENGLAND)
# just another example don tworry about htis one
