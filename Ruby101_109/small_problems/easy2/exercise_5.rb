#exercise_5.rb


puts 'What is your name?'
name = gets.chomp
if name.include?('!')
  name = name.chop #added chop in after seeing solution
  puts "#{name.upcase} WHY ARE WE SCREAMING!!" 
else 
  puts "Oh hi #{name}"
end

#LS solution
=begin
print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name = name.chop
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
=end