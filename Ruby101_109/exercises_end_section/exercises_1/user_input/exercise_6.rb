# exercise_6.rb

PASSWORD = "password"
=begin
loop do
  puts ">> Please enter your password:"
  input = gets.chomp.to_s
  if input == PASSWORD
    puts "Welcome"
    break
  end
end
=end

# LS solution I forgot to add invalid password

loop do
  puts '>> Please enter your password:'
  password_try = gets.chomp
  break if password_try = PASSWORD
  puts '>> Invalid password!'
end

puts 'Welcome!'
