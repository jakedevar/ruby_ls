# exercise_5.rb
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

first_name = ''
flintstones.select do |b|
  if b.include?('Be')
    first_name << b
    break
  end
end
p first_name

# dang i was using the wrong number for the index range
# I was trying to do 0, 1 and it wasent working but seeing the solution
# solution I could have done that in my own solution
# also the LS solution is alot simpler
flintstones.index { |name| name[0, 2] == "Be" }
