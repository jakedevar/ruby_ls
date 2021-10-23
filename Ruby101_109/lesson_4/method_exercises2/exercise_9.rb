# exercise_9.rb
words = "the flintstones rock"

return_words = ''

def capitalize_words(the_words, container)
  split_string = the_words.split
  caps_words = split_string.map! { |word| word.capitalize }
  caps_words.each { |tword| container << tword + ' ' }
end

capitalize_words(words, return_words)
p return_words

# or the more elegant LS solution
words.split.map { |word| word.capitalize }.join(' ')
