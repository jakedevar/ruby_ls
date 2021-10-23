t = Time.now.year

puts 'What is your age?'
age_input = gets.chomp.to_i
puts 'At what age would you like to retire?'
retire_age = gets.chomp.to_i

remaining_years = retire_age - age_input

puts "It's #{t}. You will retire in #{remaining_years + t}."
puts "You have only #{remaining_years} years of work to go!"
