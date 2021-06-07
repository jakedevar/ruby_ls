#while_loop_exercise.rb

word = gets.chomp.upcase

=begin 
while word != "STOP"
  puts "whats the magic word?"
  if word == "STOP"
    break
  else
  word = gets.chomp.upcase
  end
end
=end

x = ""
while x != "STOP" do
  puts "Hi, How are you feeling?"
  ans = gets.chomp
  puts "Want me to ask you again?"
  x = gets.chomp
end


