# exercise_6.rb
=begin
names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
break if names == []
  puts names.first
  names.delete(names[0])
end

puts names
=end

# LS solution

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end
