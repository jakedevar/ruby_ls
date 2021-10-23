# exercise_4.rb
=begin
def swap(string)
  string.split.each do |word|
    swap = word.reverse
    word[0] = swap[0]
    word[-1] = swap[-1]
  end.join(' ')
end
=end

def swap(string)
  string.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(' ')
end

# above was my revised solution haveing looked at LS's which is down below
def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'
