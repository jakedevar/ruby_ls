=begin
------------------- Problem ---------------------
replace all of the words representing numbers in the string to the actuall numbers
easy son

------------------- Examples --------------------
given

------------------- Data ------------------------
hash and gsub

------------------- Algorithm -------------------
going to make an array with the words then initing a hash

because then i am going to gsub! with the regex inputing the word that is passed into it with the each do on the hash keys
  replacing it with the hash value of each thing lol

------------------- Code ------------------------
=end

WORDS = %w(zero one two three four five six seven eight nine)

def init_hash
  hsh = Hash.new(0)
  WORDS.each_with_index { |word, i| hsh[word] = i.to_s }
  hsh
end

def word_to_digit(str)
  WORDS.each do |word|
    str.gsub!(/#{word}/, init_hash()[word])
  end
  str
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
