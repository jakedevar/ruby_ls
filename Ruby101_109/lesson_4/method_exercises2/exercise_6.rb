#exercise_6.rb

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
new_arr = []
flintstones.select do |first_3|
  new_arr << first_3[0..2]
end
p new_arr

#i was right here but i was so close the first time with map!!
# i mistakenly thought map automatically mutated the caller
# this was not so so i thought i would select it and move to a new arr
# and it ended up working the same anyway. actually it didnt because it didnt
# mutate the array
flintstones.map! do |name|
  name[0, 3]
end