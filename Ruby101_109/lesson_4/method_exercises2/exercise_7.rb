#exercise_7.rb
statement = "The Flintstones Rock".chars
#gave up on this one I know I had seen a solution to this before
# but I wasent coming up with anything either with research or ideas 
# thought it was best to see solution and learn from it in the future
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end