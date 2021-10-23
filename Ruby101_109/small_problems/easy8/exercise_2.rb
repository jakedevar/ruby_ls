# exercise_2.rb

puts 'Enter a noun:'
noun = gets.chomp
puts 'Enter a verb:'
verb = gets.chomp
puts 'Enter a adjective:'
adjective = gets.chomp
puts 'Enter a adverb:'
adverb = gets.chomp

sentence_1 = "you're #{noun} is #{adverb} #{verb} #{adjective}"
sentence_2 = "my #{noun} is #{adverb} #{verb} #{adjective}"
sentence_3 = "this #{noun} is #{adverb} #{verb} #{adjective}"

puts [
  sentence_1,
  sentence_2,
  sentence_3
].sample
