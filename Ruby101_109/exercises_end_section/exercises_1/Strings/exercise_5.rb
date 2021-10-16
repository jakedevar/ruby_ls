#exercise_5.rb
=begin
first_name = 'John'
last_name = 'Doe'

p full_name = first_name + ' ' + last_name
=end

#LS solution option that seems quicker tbh

first_name = "John"
last_name = "Doe"

first_name << last_name
puts first_name

#this mutates the first var though there is not space
#which is why it wasent used in the exercise