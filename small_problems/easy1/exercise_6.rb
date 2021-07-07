#exercise_6.rb
def reversed_letters(string)
  arr_storage = []
  string.split.map do |word|
    if word.size >= 5
      arr_storage << word.chars.reverse.join(' ')
    else
      arr_storage << word
    end
  end
  puts arr_storage.join' '
end

x = 'lol i just cant believe its not butter'
 reversed_letters(x)

 #LS solution
 def reverse_words(string)
  words = []

  string.split.each do |word|
    word.reverse! if word.size >= 5
    words << word
  end

  words.join(' ')
end

#heres another i found in the comments

def reverse_words(string)
  string.split.map do |word|
    word.size >= 5 ? word.reverse : word
  end.join(" ")
end

p reverse_words('i really cant believe its not butter')