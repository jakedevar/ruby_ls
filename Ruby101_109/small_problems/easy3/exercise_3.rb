#exercise_3.rb
#string = gets.chomp.to_s
#p string.chars.delete_if { |n| n == ' ' }.size
#realized there is a quicker way after seeing ls soltuion
string = gets.chomp.to_s
p string.chars.delete(' ').size

#wtf IS THIS ????
puts "Please write word or multiple words:"
ans = gets.chomp
char = ans.scan(/\S/).count
puts "There are #{char} characters in \"#{ans}\"."
#some regex out of no where 

#here is another that works well. i thought about join on first one 
puts "==> Please write a word or multiple words:"
words = gets.chomp

puts "==> There are #{words.split.join.length} characters in '#{words}.'"