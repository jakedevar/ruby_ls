#exercise_3.rb

person = {
  name: 'Bob', 
  occupation: 'web developer', 
  hobbies: 'painting'
}

p person.keys

p person.values

person.each do |k, v|
  puts k
  puts v
end