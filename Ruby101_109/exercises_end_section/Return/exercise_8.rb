# exercise_8.ruby

def count_sheep
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# i thought it would be 1, 2, 3, 4, 5, 10
# but i was incorect because puts puts the last line
# returned which is not 5 but instead 10
