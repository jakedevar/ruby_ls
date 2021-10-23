# exercise_5.rb
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female" }
}
male_ages = []
munsters.each do |sub_hash|
  sub_hash.each do |value|
    if value['gender'] == 'male'
      male_ages << value['age']
    end
  end
end

p male_ages.sum

# LS
total_male_age = 0
munsters.each_value do |details|
  total_male_age += details["age"] if details["gender"] == "male"
end

total_male_age # => 444

# my big thing is i need to spend some time doing flash cards of all the methods that we hve learned in the course so far
