#exercise_3.rb

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.reject! { |key, value| value >= 100 }

p ages

#this is right but another solution is 
ages.keep_if { |_, age| age < 100 }