#exercise_2.rb

=begin
pets = ['cat', 'dog', 'fish', 'lizard']

my_pets = "I have a pet #{pets[2]} and a pet #{pets[3]}"
puts my_pets
=end

# I was inccorect
pets = ['cat', 'dog', 'fish', 'lizard']
my_pets = pets[2..3]

puts "I have a pet #{my_pets[0]} and a pet #{my_pets[1]}"