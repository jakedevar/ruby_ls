#exercise_2.rb
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.values.sum

#mine worked and i did it in 30 seconds or so but here are the
# other ways to do this problem and are probably here for a good reason

total_ages = 0
ages.each { |_,age| total_ages += age }
total_ages # => 6174

ages.values.inject(:+) # => 6174