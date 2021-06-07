#exercise_3.rb

name = 'Roger'
=begin
puts name.downcase == 'RoGeR'.downcase

puts name.downcase == 'DAVE'.downcase
=end

puts name.casecmp('RoGeR') == 0
puts name.casecmp('DAVE') == 0