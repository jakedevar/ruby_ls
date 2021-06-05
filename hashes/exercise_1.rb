#exercise_1.rb

family = {  uncles: ["bob", "joe", "steve"],
  sisters: ["jane", "jill", "beth"],
  brothers: ["frank","rob","david"],
  aunts: ["mary","sally","susan"]
}

#i did it incorrectly, putting in solution
=begin

family.select do |k, v|
  k = :sisters || k == :brothers
  puts v
end
=end

immediate_family = family.select do |k, v|
  k == :sisters || k == :brothers
end

arr = immediate_family.values.flatten

p arr

