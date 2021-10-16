#exercise_9.rb

=begin
words = 'car human elephant airplane'.split(' ')

words_array = words.to_a

words_array.each { |x| puts "#{x}'s"}
=end

#solution i liked 
words = 'car human elephant airplane'
words.split.each {|x| puts x + 's'}