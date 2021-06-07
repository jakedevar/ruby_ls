#exercise_5.rb

person = {
  name: 'Bob', 
  occupation: 'web developer', 
  hobbies: 'painting'
}
=begin
person.select do |k, v|
  if v == 'Bob'
    puts v
  end
end
=end

# this is how the solution is written

if person.has_value?('Bob')
  puts "yes"
else
  puts "Nope!"
end
