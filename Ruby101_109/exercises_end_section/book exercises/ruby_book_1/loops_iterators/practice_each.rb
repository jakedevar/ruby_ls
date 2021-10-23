# practice_each.rb

names = ['bob', 'joe', 'stever', 'janice', 'susan', 'helen']

# names.each { |name| puts name}

x = 1

names.each do |name|
  puts "#{x}. #{name}"
  x += 1
end
