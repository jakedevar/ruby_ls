# exercise_7.rb
HASH = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
         'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

# def word_to_digit(string)
# hash = {'zero' => '0', 'one' => '1','two' => '2','three' => '3','four' => '4','five' => '5','six' => '6','seven' => '7','eight' => '8','nine' => '9'}
#   string.split.map! do |word|
#     hash.key?(word) ? word.gsub!(/\b#{word}\b/, hash[word]) : word
#   end
# end
# I gave up 2 yards from the finish line because i was getting everything except that four wit hthe period in it. after looking at the solutoin
# I realized thta it looked almost exactly like mine except no ternary logic for the map. which I added before I looked at the hints onhow to do the problem
# LS solution below. shit read the solution more closely and realized it said keys my bad didnt know how to solve this one

def word_to_digit(string)
  HASH.keys.each do |word|
    string.gsub!(/\b#{word}\b/, HASH[word])
  end
  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
