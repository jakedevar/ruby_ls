#exercise_7.rb

USER_NAME = "admin"
PASSWORD = "password"

loop do
  puts ">> Please enter your user name:"
  user_name_try = gets.chomp.to_s
  puts ">> Please enter you password:"
  pass_try = gets.chomp.to_s
  break if user_name_try == USER_NAME && pass_try == PASSWORD
  puts ">> Authorization failed!"
end

puts "Welcome!"

# my solution and LS solution were the same 
# because i used the format from the last exercise as 
# and example 
# note: they used new lines in between for readability
=begin
USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter your user name:'
  user_name = gets.chomp

  puts '>> Please enter your password:'
  password_try = gets.chomp

  break if user_name == USERNAME && password_try == PASSWORD
  puts '>> Authorization failed!'
end

puts 'Welcome!'
=end