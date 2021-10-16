#exercise_4.rb
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

min_value = 1000000
ages.each_value do |value|
  if value < min_value
    min_value = value
  end
end

p min_value

#man I even thought wow it would be great if there was a min value
# I looked in the hash docs and integer docs for one and couldent find one
# i should have looked in enumerator as well dangit
#LS solution
ages.values.min